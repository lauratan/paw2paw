import React from "react";
import DayPicker, { DateUtils }  from 'react-day-picker';
import 'react-day-picker/lib/style.css';

export default class Availability extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            selectedDays: [],
            year: [],
            month: [],
            day: [],
            finalResult: []
        }
        this.props.dates.forEach( (date) => {
          this.state.selectedDays.push(date);
        })
        this.state.selectedDays.map( date => {
          date.substring(0, 4)
        })

        this.state.selectedDays.forEach( (date) => {
          this.state.year.push(date.substring(0, 4))
          this.state.month.push(date.substring(6, 7))
          this.state.day.push(date.substring(8, 10))
        })


        
        
        // let year = this.state.year
        // let month = this.state.month
        // let day = this.state.day
        // for (let i = 0; i < year.length; i++){
        //   printDate(year[i], month[i], day[i]);
        // }

        // function printDate(year, month, day){

        //   let date = year month + day
        //   console.log(date);
        // }
        this.state.finalResult.push({
          after: new Date(2018, 5, 30),
          before: new Date()  
        })

        this.state.finalResult.push({
          after: new Date(),
          before: new Date(Number(this.state.year[0]), Number(this.state.month[0]) - 1, Number(this.state.day[0]))  
        })
        
        for ( let i = 1; i < this.state.year.length; i++) {
          let after = new Date(Number(this.state.year[i-1]), Number(this.state.month[i-1]) - 1, Number(this.state.day[i-1]))
          let before = new Date(Number(this.state.year[i]), Number(this.state.month[i]) - 1, Number(this.state.day[i]))
          let result = {
            after: after,
            before: before
          }
          this.state.finalResult.push(result)
        }

        this.state.finalResult.push({
          after: new Date(Number(this.state.year[this.state.year.length-1]), Number(this.state.month[this.state.year.length-1]) - 1, Number(this.state.day[this.state.year.length-1])),  
          before: new Date(2018, Number(this.state.month[0]), 1)  
        })

        console.log(this.state.finalResult);


    }
    render() {

      return (
        <div>
          <DayPicker
          disabledDays = {this.state.finalResult}
          // disabledDays={[{
          //   after: new Date(2018, 6, 31),
          //   before: new Date(Number(this.state.year[0]), Number(this.state.month[0]) - 1, Number(this.state.day[0]))
          // }]}
          />
        </div>
      );
    }
  }

