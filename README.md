# 📋 Overview
This Flutter application enables users to:
 - Experience a **WhatsApp-style UI** built with **pixel-perfect** accuracy and production-quality details.
 - Navigate the main screens: **Home (chat list)**, **Chat (conversation)**, and **Stories (status)** with smooth, native-feeling interactions.
 - Switch seamlessly between **Light** and **Dark** themes, with **responsive layouts** that adapt to different screen sizes and densities.
 - Get **rich microinteractions**: animated **chat open transition**, and smooth **send-message**
 - Benefit from **Flutter Responsive** utilities for consistent paddings, font sizes, and component scaling across devices.

# ✨ Design Decisions

When building this app, I focused on creating a real WhatsApp-like experience while keeping the code clean and reusable. 
I relied on Flutter’s widget system to split the UI into well-structured components, which helped me maintain clarity and flexibility.
I also integrated the flutter responsive package to make sure the app looks and feels right on different screen sizes without losing design quality. 
This was important for keeping the layout adaptive while still maintaining pixel-perfect details.

# 🏆 Ensuring Quality

To ensure a high-quality result, I:
- Followed Flutter best practices for UI composition and state management.
- Tested both light and dark themes to guarantee consistent visuals.
- Used smooth animations and transitions to replicate a native experience.
- Verified the design on different screen densities to confirm responsiveness.
- 
# 🧩 System Design
- **lib/**
  - **core/**
    - **router/**
      - `app_router.dart`: GoRoute for handling routes
    - **utils/**
      - `constants.dart`: App constants
      - `shared_preference_helper.dart`: Shared preferences handler
      - `spacing.dart`: Handle spacing
      - `helpers.dart`: size helper
    - **theming/**
      - `colors.dart`: App color palette
      - `font_weight_helper.dart`: Font weights
      - `styles.dart`: Text styles
    - **widgets/**
      - `custom_icon_button.dart`: Reusable custom icon button
      - `custom_divider.dart`: Reusable divider
      - `custom_text_form_field.dart`: Reusable form field
      - `custom_sliver_app_bar.dart`

  - **Data/**
    - **models/**
      - `message_model.dart`

  - **presentation/**
    - **controllers/**
    - **view/**
      - **screens/**
        - `chat_screen.dart`
        - `home_screen.dart`
        - `nav_screen.dart`
        - `status_viewer_screen.dart`
        - `updates_screen.dart`
      - **widgets/**
        - `archived_title.dart`
        - `chat_app_bar.dart`
        - `chat_filters_list.dart`
        - `chat_input_field.dart`
        - `chat_item.dart`
        - `message_bubble.dart`
        - `search_field.dart`
        - `status_avatar.dart`
        - `status_tile.dart`
        - `story_progress_bar.dart`

  - `whatsapp.dart`
  - `main.dart`
 
# Demo
https://github.com/user-attachments/assets/c5b2623a-142a-4eae-a516-69d0bac780e2

