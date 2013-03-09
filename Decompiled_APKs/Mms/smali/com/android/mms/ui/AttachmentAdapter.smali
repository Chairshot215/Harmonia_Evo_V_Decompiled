.class Lcom/android/mms/ui/AttachmentAdapter;
.super Lcom/android/mms/ui/IconListAdapter;
.source "AttachmentTypeSelectorAdapter.java"


# static fields
.field public static final MIN_AUDIO_SIZE:I = 0x2800

.field public static final MIN_VIDEO_SIZE:I = 0xc800

.field public static final REQUEST_CODE_ATTACH_APP_RECOMMENDATION:I = 0x14

.field public static final REQUEST_CODE_ATTACH_LOCATION:I = 0x33


# instance fields
.field protected ADD_AUDIO:I

.field protected ADD_LOCATION:I

.field protected ADD_PICTURE:I

.field protected ADD_RECOMMENDATION:I

.field protected ADD_SLIDESHOW:I

.field protected ADD_VCALENDAR:I

.field protected ADD_VCARD:I

.field protected ADD_VIDEO:I

.field protected m_SlideSizeLimit:I

.field protected m_activityMain:Landroid/app/Activity;

.field protected m_bResizeImage:Z

.field protected m_bWithAppointment:Z

.field protected m_bWithContact:Z

.field protected m_bWithLocation:Z

.field protected m_bWithRecommendation:Z

.field protected m_bWithSlideshow:Z

.field protected m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

.field protected m_strMsgText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/mms/ui/MediaPicker;Ljava/lang/String;ZZZZZZ)V
    .locals 6
    .parameter "activity"
    .parameter "mediaPicker"
    .parameter "strMsgText"
    .parameter "bWithLocation"
    .parameter "bWithRecommendation"
    .parameter "bWithContact"
    .parameter "bWithAppointment"
    .parameter "bWithSlideshow"
    .parameter "bResizeImage"

    .prologue
    .line 83
    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move v5, p8

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/AttachmentAdapter;->getData(Landroid/content/Context;ZZZZZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/IconListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 85
    iput-object p2, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    .line 86
    iput-object p3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_strMsgText:Ljava/lang/String;

    .line 87
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    .line 88
    iput-boolean p4, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithLocation:Z

    .line 89
    iput-boolean p5, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithRecommendation:Z

    .line 91
    iput-boolean p6, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithContact:Z

    .line 92
    iput-boolean p7, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithAppointment:Z

    .line 93
    iput-boolean p8, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithSlideshow:Z

    .line 94
    iput-boolean p9, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bResizeImage:Z

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_SlideSizeLimit:I

    .line 97
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentAdapter;->initItemID()V

    .line 99
    return-void
.end method

.method protected static getData(Landroid/content/Context;ZZZZZ)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "bWithLocation"
    .parameter "bWithRecommendation"
    .parameter "bWithContact"
    .parameter "bWithAppointment"
    .parameter "bWithSlideshow"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZZZZ)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/ui/IconListAdapter$IconListItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f020151

    const v4, 0x7f02014f

    const v3, 0x7f02014a

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 193
    .local v0, listData:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/ui/IconListAdapter$IconListItem;>;"
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x30

    if-ne v1, v2, :cond_5

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-ne v1, v2, :cond_5

    .line 195
    const v1, 0x7f0902cc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 202
    :goto_0
    const v1, 0x7f0900dd

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020149

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 203
    const v1, 0x7f0900de

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02014b

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 205
    if-eqz p2, :cond_0

    .line 206
    const v1, 0x7f090129

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020152

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 207
    :cond_0
    if-eqz p1, :cond_1

    .line 208
    const v1, 0x7f09013f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02014e

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 212
    :cond_1
    if-eqz p3, :cond_2

    .line 213
    invoke-static {}, Lcom/android/mms/MmsApp;->isNoTruncate()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 214
    const v1, 0x7f090172

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 218
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 219
    invoke-static {}, Lcom/android/mms/MmsApp;->isNoTruncate()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 220
    const v1, 0x7f090174

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 226
    :cond_3
    :goto_2
    if-eqz p5, :cond_4

    .line 227
    const v1, 0x20c01f6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020150

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    .line 229
    :cond_4
    return-object v0

    .line 197
    :cond_5
    const v1, 0x7f090142

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 216
    :cond_6
    const v1, 0x7f090173

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_1

    .line 222
    :cond_7
    const v1, 0x7f090175

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/mms/ui/AttachmentAdapter;->addItem(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_2
.end method

.method private initItemID()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, nDynamiciItemCount:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #nDynamiciItemCount:I
    .local v1, nDynamiciItemCount:I
    iput v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_PICTURE:I

    .line 112
    add-int/lit8 v0, v1, 0x1

    .end local v1           #nDynamiciItemCount:I
    .restart local v0       #nDynamiciItemCount:I
    iput v1, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VIDEO:I

    .line 113
    add-int/lit8 v1, v0, 0x1

    .end local v0           #nDynamiciItemCount:I
    .restart local v1       #nDynamiciItemCount:I
    iput v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_AUDIO:I

    .line 115
    iget-boolean v2, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithRecommendation:Z

    if-ne v2, v4, :cond_0

    .line 116
    add-int/lit8 v0, v1, 0x1

    .end local v1           #nDynamiciItemCount:I
    .restart local v0       #nDynamiciItemCount:I
    iput v1, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_RECOMMENDATION:I

    .line 120
    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithLocation:Z

    if-ne v2, v4, :cond_1

    .line 121
    add-int/lit8 v1, v0, 0x1

    .end local v0           #nDynamiciItemCount:I
    .restart local v1       #nDynamiciItemCount:I
    iput v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_LOCATION:I

    move v0, v1

    .line 125
    .end local v1           #nDynamiciItemCount:I
    .restart local v0       #nDynamiciItemCount:I
    :goto_1
    iget-boolean v2, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithContact:Z

    if-ne v2, v4, :cond_2

    .line 126
    add-int/lit8 v1, v0, 0x1

    .end local v0           #nDynamiciItemCount:I
    .restart local v1       #nDynamiciItemCount:I
    iput v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VCARD:I

    move v0, v1

    .line 130
    .end local v1           #nDynamiciItemCount:I
    .restart local v0       #nDynamiciItemCount:I
    :goto_2
    iget-boolean v2, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bWithAppointment:Z

    if-ne v2, v4, :cond_3

    .line 131
    add-int/lit8 v1, v0, 0x1

    .end local v0           #nDynamiciItemCount:I
    .restart local v1       #nDynamiciItemCount:I
    iput v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VCALENDAR:I

    move v0, v1

    .line 135
    .end local v1           #nDynamiciItemCount:I
    .restart local v0       #nDynamiciItemCount:I
    :goto_3
    iput v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_SLIDESHOW:I

    .line 136
    return-void

    .line 118
    .end local v0           #nDynamiciItemCount:I
    .restart local v1       #nDynamiciItemCount:I
    :cond_0
    iput v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_RECOMMENDATION:I

    move v0, v1

    .end local v1           #nDynamiciItemCount:I
    .restart local v0       #nDynamiciItemCount:I
    goto :goto_0

    .line 123
    :cond_1
    iput v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_LOCATION:I

    goto :goto_1

    .line 128
    :cond_2
    iput v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VCARD:I

    goto :goto_2

    .line 133
    :cond_3
    iput v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VCALENDAR:I

    goto :goto_3
.end method

.method private showSubDialog(I)V
    .locals 6
    .parameter "nID"

    .prologue
    .line 242
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    if-nez v3, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    .local v1, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v3, 0x7f0900e4

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 248
    const/4 v0, 0x0

    .line 251
    .local v0, adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    iget v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_PICTURE:I

    if-ne p1, v3, :cond_3

    .line 252
    new-instance v0, Lcom/android/mms/ui/PictureAttachAdapter;

    .end local v0           #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-boolean v5, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_bResizeImage:Z

    invoke-direct {v0, v3, v4, v5}, Lcom/android/mms/ui/PictureAttachAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;Z)V

    .line 275
    .restart local v0       #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    :cond_2
    :goto_1
    new-instance v3, Lcom/android/mms/ui/AttachmentAdapter$1OnSubDlgClickListener;

    invoke-direct {v3, p0, v0}, Lcom/android/mms/ui/AttachmentAdapter$1OnSubDlgClickListener;-><init>(Lcom/android/mms/ui/AttachmentAdapter;Lcom/android/mms/ui/IconListAdapter;)V

    invoke-virtual {v1, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 277
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    .line 278
    .local v2, dlg:Landroid/app/Dialog;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    instance-of v3, v3, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    check-cast v3, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v3, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->manageDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 254
    .end local v2           #dlg:Landroid/app/Dialog;
    :cond_3
    iget v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VIDEO:I

    if-ne p1, v3, :cond_4

    .line 255
    new-instance v0, Lcom/android/mms/ui/VideoAttachAdapter;

    .end local v0           #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget v5, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_SlideSizeLimit:I

    invoke-direct {v0, v3, v4, v5}, Lcom/android/mms/ui/VideoAttachAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;I)V

    .restart local v0       #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    goto :goto_1

    .line 257
    :cond_4
    iget v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_AUDIO:I

    if-ne p1, v3, :cond_5

    .line 258
    new-instance v0, Lcom/android/mms/ui/AudioAttachAdapter;

    .end local v0           #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget v5, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_SlideSizeLimit:I

    invoke-direct {v0, v3, v4, v5}, Lcom/android/mms/ui/AudioAttachAdapter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/MediaPicker;I)V

    .restart local v0       #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    goto :goto_1

    .line 261
    :cond_5
    iget v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_LOCATION:I

    if-ne p1, v3, :cond_2

    .line 262
    new-instance v0, Lcom/android/mms/ui/LocationAttachAdapter;

    .end local v0           #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    iget-object v3, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    invoke-direct {v0, v3}, Lcom/android/mms/ui/LocationAttachAdapter;-><init>(Landroid/app/Activity;)V

    .restart local v0       #adapterSubDlg:Lcom/android/mms/ui/IconListAdapter;
    goto :goto_1
.end method


# virtual methods
.method public onItemAction(I)V
    .locals 2
    .parameter "nIDItem"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_PICTURE:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VIDEO:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_AUDIO:I

    if-ne p1, v0, :cond_3

    .line 146
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentAdapter;->showSubDialog(I)V

    goto :goto_0

    .line 148
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_RECOMMENDATION:I

    if-ne p1, v0, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentAdapter;->showRecommendationDialog()V

    goto :goto_0

    .line 151
    :cond_4
    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_LOCATION:I

    if-ne p1, v0, :cond_6

    .line 152
    invoke-static {}, Lcom/android/mms/MmsApp;->isSupportLocationMessage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 153
    invoke-direct {p0, p1}, Lcom/android/mms/ui/AttachmentAdapter;->showSubDialog(I)V

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    instance-of v0, v0, Lcom/android/mms/ui/ComposeMessageActivity;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    check-cast v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ComposeMessageActivity;->showLocationMessageHelpifNeed()V

    goto :goto_0

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentAdapter;->showLocationDialog()V

    goto :goto_0

    .line 163
    :cond_6
    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VCARD:I

    if-ne p1, v0, :cond_7

    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 165
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 167
    :cond_7
    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_VCALENDAR:I

    if-ne p1, v0, :cond_8

    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto :goto_0

    .line 171
    :cond_8
    iget v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->ADD_SLIDESHOW:I

    if-ne p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setType(I)V

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_strMsgText:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_strMsgText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    iget-object v1, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_strMsgText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setMessageText(Ljava/lang/String;)V

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setCreateOnThreadFlage(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MediaPicker;->setFlage(Z)V

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_mediaPicker:Lcom/android/mms/ui/MediaPicker;

    invoke-virtual {v0}, Lcom/android/mms/ui/MediaPicker;->start()V

    goto/16 :goto_0
.end method

.method public setSlideSizeLimit(I)V
    .locals 0
    .parameter "slideSizeLimit"

    .prologue
    .line 103
    iput p1, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_SlideSizeLimit:I

    .line 104
    return-void
.end method

.method protected showLocationDialog()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 239
    :goto_0
    return-void

    .line 235
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.android.locationpicker"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    const-string v1, "PickerReturnDlg"

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    const/16 v2, 0x33

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected showRecommendationDialog()V
    .locals 3

    .prologue
    .line 283
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 288
    :goto_0
    return-void

    .line 285
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.appsharing.action.GET_SELECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentAdapter;->m_activityMain:Landroid/app/Activity;

    const/16 v2, 0x14

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
