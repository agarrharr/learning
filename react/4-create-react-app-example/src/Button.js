import React from 'react';
import cx from 'classnames';
import './Button.css';

const Button = ({
  children = 'hello',
  type = 'normal'
}) => {
  return (
    <div className={cx({
      'Button': true,
      'Button--alert': type === 'alert'
    })}>
      {children}
      <span className="Button__exclaim">!</span>
    </div>
  );
};

export default Button;
