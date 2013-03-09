.class public Lcom/htc/album/Customizable/CustSkinnable;
.super Ljava/lang/Object;
.source "CustSkinnable.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/htc/album/Customizable/CustSkinnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/Customizable/CustSkinnable;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getColor_BackgroundColor(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 367
    const v0, -0xd0d0e

    return v0
.end method

.method public static getColor_CropFrame(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "app_selection_highlight"

    const v3, 0x20a001b

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 210
    .local v0, nColor:I
    return v0
.end method

.method public static getColor_TagSearchHighLight(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 220
    const-string v2, "input_text_selection_highlight"

    const v3, 0x20a001b

    invoke-static {p0, v2, v3}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 223
    .local v1, textviewHightlightColorId:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 225
    .local v0, HtcTextHighlightColor:I
    return v0
.end method

.method public static getDrawableRes_2PanelBackground(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 302
    const/4 v0, 0x0

    return v0
.end method

.method public static getDrawableRes_PanelBackground(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 312
    .local v0, nResID:I
    return v0
.end method

.method public static getDrawable_Capture_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 84
    const-string v0, "common_icon_glance_camera_rest"

    const v1, 0x2080899

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Checkbox_off(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 194
    const-string v0, "common_checkbox_off"

    const v1, 0x208019d

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Checkbox_on(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 188
    const-string v0, "common_checkbox_on"

    const v1, 0x208019f

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_CommandbarBackgroundTransparent(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 200
    const-string v0, "common_sub_panel_navbar_75"

    const v1, 0x2080507

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Default_Avatar(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 277
    const v0, 0x20800c2

    return v0
.end method

.method public static getDrawable_Default_PictureAndVideo(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 281
    const v0, 0x2080252

    return v0
.end method

.method public static getDrawable_Delete_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 90
    const-string v0, "common_icon_delete_rest"

    const v1, 0x2080264

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Dolby_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 141
    const-string v0, "common_icon_dolby_rest"

    const v1, 0x2080278

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_EditTextBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 265
    const-string v0, "edit_text"

    const v1, 0x208008c

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Folder_Select(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 355
    const-string v0, "gallery_folder_select"

    const v1, 0x7f02000f

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Frame_Selected(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 361
    const-string v0, "gallery_frame_selected"

    const v1, 0x7f020011

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_GridViewSelector(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 182
    const-string v0, "gallery_frame_selected"

    const v1, 0x7f020011

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Grid_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 123
    const-string v0, "common_icon_grid_rest"

    const v1, 0x20802e0

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_IconInfo_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 116
    const-string v0, "common_icon_info_rest"

    const v1, 0x2080303

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Icon_Add_Tab(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 33
    const-string v0, "common_icon_glance_add_tab_rest"

    const v1, 0x208087e

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_InputField(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 229
    const-string v0, "common_inputfield"

    const v1, 0x2080046

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_ListView_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    const-string v0, "common_icon_list_view_rest"

    const v1, 0x2080311

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_LoginButton(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 285
    const-string v0, "common_button_small"

    const v1, 0x2080011

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Menu_Print(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 331
    const/4 v0, 0x0

    .line 333
    .local v0, nResID:I
    const-string v1, "common_icon_menu_print"

    const v2, 0x2080746

    invoke-static {p0, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 338
    return v0
.end method

.method public static getDrawable_PhotoEdit_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 97
    const-string v0, "common_icon_photo_edit_rest"

    const v1, 0x20803dd

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Share_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 104
    const-string v0, "common_icon_share_rest"

    const v1, 0x208040e

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Srs51_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 153
    const-string v0, "common_icon_srs51_rest"

    const v1, 0x20806b6

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Srs_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 159
    const-string v0, "common_icon_srs_rest"

    const v1, 0x2080419

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Surround_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    const-string v0, "common_icon_surround_rest"

    const v1, 0x2080436

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_TagButton(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 247
    const-string v0, "common_b_button_small"

    const v1, 0x2080008

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_TagDescription(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 241
    const-string v0, "common_inputfield_caption"

    const v1, 0x2080041

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_TagPressRes(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 259
    const-string v0, "tag_label_empty_press"

    const v1, 0x2080b1f

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_TagRes(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 253
    const-string v0, "tag_label_empty"

    const v1, 0x2080b1e

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_TagTitle(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 235
    const-string v0, "common_inputfield"

    const v1, 0x2080046

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Thumbnails_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 129
    const-string v0, "common_icon_thumbnails_rest"

    const v1, 0x208043e

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Updates_Rest(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 135
    const-string v0, "common_icon_updates_rest"

    const v1, 0x2080450

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_Wallpaper(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "bIsLandscape"

    .prologue
    .line 291
    const/4 v0, 0x0

    .line 293
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    return-object v0
.end method

.method public static getDrawable_Wallpaper2(Landroid/content/Context;Z)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "context"
    .parameter "bIsLandscape"

    .prologue
    .line 297
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDrawable_WindowDefaultBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 271
    const-string v0, "common_app_bkg"

    const v1, 0x20806b7

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_fit_screen(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    const-string v0, "fit_screen"

    const v1, 0x7f020004

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_full_screen(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 54
    const-string v0, "full_screen"

    const v1, 0x7f020005

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getGlanceBackground(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 378
    const-string v0, "common_glance_bkg"

    const v1, 0x20801c1

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getDrawable_getIconDefaultAlbum(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 375
    const v0, 0x208023c

    return v0
.end method

.method public static getDrawable_getPhotoFrameMask(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 371
    const v0, 0x2080703

    return v0
.end method

.method public static setBackground_PhotoEnhancerPhotoPresetFrame(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .parameter "context"
    .parameter "viewSkinnable"

    .prologue
    .line 22
    if-nez p1, :cond_0

    .line 30
    :goto_0
    return-void

    .line 26
    :cond_0
    const-string v0, "photo_preset_bg"

    const v1, 0x7f02003b

    invoke-static {p0, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
