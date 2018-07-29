import React from "react";
import DayPicker, { DateUtils }  from 'react-day-picker';
import 'react-day-picker/lib/style.css';

export default class Availability extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            selectedDays: []
        }
        this.props.dates.forEach( (date) => {
          this.state.selectedDays.push(date);
        })
        this.state.selectedDays.forEach( (date) => {
          console.log(date);
        })
    }
    render() {
      return (
        <div>
          <DayPicker
          disabledDays={{
            after: new Date(2018, 6, 31),
            before: new Date(2018, 7, 9)
          }}
          />
        </div>
      );
    }
  }

