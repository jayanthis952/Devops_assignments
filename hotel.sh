#!/bin/bash
total=0
order_summary=""

while true; do
    echo "=====WELCOME TO HOTEL====="
    echo "======MENU======="
    echo "1. Idli"
    echo "2. Dosa"
    echo "3. Samosa"
    echo "4. Pallav"
    echo "5. Coffee/Tea"
    echo "6. Exit"
    echo "--------------------------"
    echo -n "Select Your Order: "
    read main_choice

    case $main_choice in
        1) echo "----Idli Menu----"
           echo "1. Normal Idli - Rs.10"
           echo "2. Rava Idli - Rs.15"
           echo -n "Select Idli type: "
           read idli_choice
           if [ "$idli_choice" -eq 1 ]; then
               item="Normal Idli"; unit_price=10
           else
               item="Rava Idli"; unit_price=15
           fi
           ;;
        2) echo "----Dosa Menu----"
           echo "1. Plain Dosa - Rs.20"
           echo "2. Masala Dosa - Rs.30"
           echo -n "Select Dosa type: "
           read dosa_choice
           if [ "$dosa_choice" -eq 1 ]; then
               item="Plain Dosa"; unit_price=20
           else
               item="Masala Dosa"; unit_price=30
           fi
           ;;
        3) echo "----Samosa Menu----"
           echo "1. Veg Samosa - Rs.12"
           echo "2. Paneer Samosa - Rs.18"
           echo -n "Select Samosa type: "
           read samosa_choice
           if [ "$samosa_choice" -eq 1 ]; then
               item="Veg Samosa"; unit_price=12
           else
               item="Paneer Samosa"; unit_price=18
           fi
           ;;
        4) echo "----Pallav Menu----"
           echo "1. Veg Pallav - Rs.25"
           echo "2. Paneer Pallav - Rs.30"
           echo -n "Select Pallav type: "
           read pallav_choice
           if [ "$pallav_choice" -eq 1 ]; then
               item="Veg Pallav"; unit_price=25
           else
               item="Paneer Pallav"; unit_price=30
           fi
           ;;
        5) echo "-----Coffee/Tea Menu-----"
           echo "1. Coffee - Rs.10"
           echo "2. Tea - Rs.15"
           echo -n "Select Beverage: "
           read drink_choice
           if [ "$drink_choice" -eq 1 ]; then
               item="Coffee"; unit_price=10
           else
               item="Tea"; unit_price=15
           fi
           ;;
        6) echo ""
           echo "------- Final Order Summary --------"
           echo -e "$order_summary"
           echo "Total Amount: Rs.$total"
           echo "Thank you! Visit Again!"
           break
           ;;
        *) echo "Invalid Choice. Please try again."
           continue
           ;;
    esac

    echo -n "How many of $item? "
    read quantity
    item_price=`expr $unit_price \* $quantity`
    total=`expr $total + $item_price`

    if [[ "$item" == "Coffee" || "$item" == "Tea" ]]; then
        unit_label="cup"
    else
        unit_label="plate"
    fi

    if [ "$quantity" -gt 1 ]; then
        unit_label="${unit_label}s"
    fi

    order_summary+="$item x $quantity $unit_label - Rs.$item_price\n"

    echo "Added: $item x $quantity $unit_label - Rs.$item_price"
    echo ""
done

