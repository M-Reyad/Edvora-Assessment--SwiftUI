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
![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 13 54 45](https://user-images.githubusercontent.com/93882864/153404553-5ec1c0f0-057b-4b33-9c36-353521379015.png)
![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 13 54 36](https://user-images.githubusercontent.com/93882864/153404577-9510a1d6-c276-48b7-aa20-ee6cd3c7f170.png)
![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 13 55 02](https://user-images.githubusercontent.com/93882864/153404585-e22a397b-b46e-4589-bedd-8dda9f29f0c8.png)
![Simulator Screen Shot - iPhone 8 - 2022-02-10 at 13 54 54](https://user-images.githubusercontent.com/93882864/153404592-d4d66aa6-9aa3-4276-9d30-e5254f669a47.png)


https://user-images.githubusercontent.com/93882864/153310562-86e51a9b-098f-440d-97f2-00e505c68487.mov

