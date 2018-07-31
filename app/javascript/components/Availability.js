import React from 'react';
import DayPicker, { DateUtils } from 'react-day-picker';

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

      console.log("🐢")
      //Push each dates from db into an array (change selectedDays[] -> not a state?)
      this.props.dates.forEach( (date) => {
        this.state.selectedDays.push(date);
      })
      
      //Substring each date into y/m/d (refactor?)
      this.state.selectedDays.forEach( (date) => {
        this.state.year.push(date.substring(0, 4))
        this.state.month.push(date.substring(6, 7))
        this.state.day.push(date.substring(8, 10))
      })

      //Show disabled days if not selected since 1900
      this.state.finalResult.push({
        after: new Date(1900, 0, 1),
        before: new Date()  
      })

      //Show disabled days from today until the first day it is available
      this.state.finalResult.push({
        after: new Date(),
        before: new Date(Number(this.state.year[0]), Number(this.state.month[0]) - 1, Number(this.state.day[0]))  
      })
      
      //Loop through the 3 arrays and return the correct date format 
      for (let i = 1; i < this.state.year.length; i++) {
        let after = new Date(Number(this.state.year[i-1]), Number(this.state.month[i-1]) - 1, Number(this.state.day[i-1]))
        let before = new Date(Number(this.state.year[i]), Number(this.state.month[i]) - 1, Number(this.state.day[i]))
        let result = {
          after: after,
          before: before
        }
        this.state.finalResult.push(result)
      }

      //Show disabled days from the last avail date until next year
      this.state.finalResult.push({
        after: new Date(Number(this.state.year[this.state.year.length-1]), Number(this.state.month[this.state.year.length-1]) - 1, Number(this.state.day[this.state.year.length-1])),  
        before: new Date(Number(this.state.year) + 2,  0, 1)  
      })
    }

    render() {
      return (
        <div>
          <DayPicker
          disabledDays = {this.state.finalResult}
          />
        </div>
      );
    }
  }
