import React from "react";
import DayPicker, { DateUtils }  from 'react-day-picker';
import 'react-day-picker/lib/style.css';

export default class Calendar extends React.Component {
    constructor(props){
        super(props);
        this.state = {
            selectedDays: new Date(2018, 6, 28),
        }
    }
    render() {
      return (
        <div>
          <DayPicker
          disabledDays={this.state.selectedDays}
          />
        </div>
      );
    }
  }

