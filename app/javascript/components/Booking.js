import React from 'react';
import DayPicker, { DateUtils } from 'react-day-picker';

export default class Booking extends React.Component {
    constructor(props){
      super(props);
      this.state = {
        finalResult: []
      }

      let availDays = [];
      let year = [];
      let month = [];
      let day = [];
      //Push each dates from db into an array)
      this.props.dates.forEach( (date) => {
        availDays.push(date);
      })
      
      //Substring each date into y/m/d (refactor?)
        availDays.forEach( (date) => {
        year.push(date.substring(0, 4))
        month.push(date.substring(6, 7))
        day.push(date.substring(8, 10))
      })

      //Show disabled days if not selected since 1900
      this.state.finalResult.push({
        after: new Date(1900, 0, 1),
        before: new Date()  
      })

      //Show disabled days from today until the first day it is available
      this.state.finalResult.push({
        after: new Date(),
        before: new Date(Number(year[0]), Number(month[0]) - 1, Number(day[0]))  
      })
      
      //Loop through the 3 arrays and return the correct date format 
      for (let i = 1; i < year.length; i++) {
        let after = new Date(Number(year[i-1]), Number(month[i-1]) - 1, Number(day[i-1]))
        let before = new Date(Number(year[i]), Number(month[i]) - 1, Number(day[i]))
        let result = {
          after: after,
          before: before
        }
        this.state.finalResult.push(result)
      }

      //Show disabled days from the last avail date until next year
      this.state.finalResult.push({
        after: new Date(Number(year[year.length-1]), Number(month[year.length-1]) - 1, Number(day[year.length-1])),  
        before: new Date(Number(year) + 2,  0, 1)  
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
