### EdvoraAssessment

In this project, it was required to make a UI application to present a JSON data as a menu.


## Structures
Firstly, after discovering the JSON data, I decided to make a Category View and Products View.

# Category Struct:
Resposible for presenting **Headline** of the combination of products that have the same Product name

# Products Struct:
Responsible for preseting the **Scrollable** Stack of the products that share the same Product Name

# Filters Struct
Responsible for presenting the Filters UI **not completed yet, only Clear Filters functionality is completed**


## API Manager
Responsible for Making Safe URL Session, Fetching the JSON data and finally creating the Products, Categories Arrays.

## Swift Package Dependencies Used
- SDWebImageSwiftUI: to fetch the Images from the JSON data ( Can't Use AsyncImage Struct as I am using XCode 11.3.1, macOS 10.16)

**In Progress to be completed:
1- Attaching a scroll pattern (dots) to the Scroll view of products.
2- Completing the Filters Functionlaity



##Images:
![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 00 14 08](https://user-images.githubusercontent.com/93882864/153310289-2c5b0a49-9e87-458d-8e67-8f29c714a897.png)
![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 01 32 22](https://user-images.githubusercontent.com/93882864/153310295-6c448187-bf06-413d-ac13-879580f02c01.png)
![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 01 32 09](https://user-images.githubusercontent.com/93882864/153310309-6a9bacec-e65a-4c67-b273-7953fd4ddb91.png)


https://user-images.githubusercontent.com/93882864/153310562-86e51a9b-098f-440d-97f2-00e505c68487.mov

