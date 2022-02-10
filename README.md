# EdvoraAssessment

In this project, it was required to make a UI application to present a JSON data as a menu.


## Structures
Firstly, after discovering the JSON data, I decided to make a Category View and Products View.

### Category Struct:
Resposible for presenting **Headline** of the combination of products that have the same Product name

### Products Struct:
Responsible for preseting the **Scrollable** Stack of the products that share the same Product Name

### Filters Struct
Responsible for presenting the Filters UI **not completed yet, only Clear Filters functionality is completed**


## API Manager
Responsible for Making Safe URL Session, Fetching the JSON data and finally creating the Products, Categories Arrays.

## Swift Package Dependencies Used
- SDWebImageSwiftUI: to fetch the Images from the JSON data ( Can't Use AsyncImage Struct as I am using XCode 11.3.1, macOS 10.16)

**In Progress to be completed:

 1- Attaching a scroll pattern (dots) to the Scroll view of products.
 2- Completing the Filters Functionlaity



##Images:

![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 13 54 36](https://user-images.githubusercontent.com/93882864/153404577-9510a1d6-c276-48b7-aa20-ee6cd3c7f170.png = 200x250)

![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 15 26 09](https://user-images.githubusercontent.com/93882864/153417626-28d5b2f1-aa2d-409e-86eb-7f779004b980.png)

![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 15 26 32](https://user-images.githubusercontent.com/93882864/153417609-27fe84f4-be5a-4c92-ab07-ef74157c94bf.png)

https://user-images.githubusercontent.com/93882864/153310562-86e51a9b-098f-440d-97f2-00e505c68487.mov

