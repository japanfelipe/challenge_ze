import pandas as pd


def day_of_week(df):
    
    return (df['Date&Time'].dt
            .day_name()
            .map({
                'Monday': '1 Segunda',
                'Tuesday': '2 Terca',
                'Wednesday': '3 Quarta',
                'Thursday' : '4 Quinta',
                'Friday': '5 Sexta',
                'Saturday': '6 Sabado',
                'Sunday':'7 Domingo',
            })
        )