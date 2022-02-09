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


Images:
