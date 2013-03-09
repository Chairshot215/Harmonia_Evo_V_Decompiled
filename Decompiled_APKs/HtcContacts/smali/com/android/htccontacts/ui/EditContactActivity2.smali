.class public final Lcom/android/htccontacts/ui/EditContactActivity2;
.super Lcom/android/htccontacts/app/BaseActivity;
.source "EditContactActivity2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/htccontacts/model/Editor$EditorListener;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;,
        Lcom/android/htccontacts/ui/EditContactActivity2$CompanyEditTextWatchMonitor;,
        Lcom/android/htccontacts/ui/EditContactActivity2$PhoneEditTextWatchMonitor;,
        Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;,
        Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;,
        Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;,
        Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;,
        Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;,
        Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;,
        Lcom/android/htccontacts/ui/EditContactActivity2$DialogBuilderPackage;,
        Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;,
        Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;,
        Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntityResult;,
        Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;,
        Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;,
        Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;,
        Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;,
        Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/htccontacts/app/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/android/htccontacts/model/Editor$EditorListener;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/htccontacts/model/EntityDelta;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTACT_TYPE_EXCHANGE:I = 0x1

.field protected static final DEBUG:Z = false

.field private static final DIALOG_DOWNLOAD_FACEBOOK_PHOTO_ME:I = 0xf1

.field private static final DIALOG_PICKER_ALL_TYPES_DIALOG:I = 0xf0

.field public static final EXTRA_INSERT_COMPANY:Ljava/lang/String; = "EXTRA_INSERT_COMPANY"

.field public static final EXTRA_INSERT_HONEPHONE:Ljava/lang/String; = "EXTRA_INSERT_HONE_PHONE"

.field public static final EXTRA_INSERT_MOBILEPHONE:Ljava/lang/String; = "EXTRA_INSERT_MOBILE_PHONE"

.field public static final EXTRA_INSERT_TITLE:Ljava/lang/String; = "EXTRA_INSERT_TITLE"

.field public static final EXTRA_INSERT_WORKPHONE:Ljava/lang/String; = "EXTRA_INSERT_WORK_PHONE"

.field public static final EXTRA_IN_CONTACT_TYPE:Ljava/lang/String; = "CONTACT_TYPE"

.field private static final FLAG_SIM_SAVE_ANR1_FULL:I = 0x2

.field private static final FLAG_SIM_SAVE_ANR2_FULL:I = 0x4

.field private static final FLAG_SIM_SAVE_EMAIL_FULL:I = 0x1

.field private static final HANDLER_MSG_DOWNLOAD_FACEBOOK_ME_PHOTO_DONE:I = 0xf00003

.field private static final HANDLER_MSG_FINISH_SELF:I = 0xf00002

.field private static final HANDLER_MSG_SHOW_SAVING_DIALOG:I = 0xf00001

.field private static final INPUT_TYPE_CUSTOM:I = 0x2001

.field private static final KEY_EDIT_DISPLAY_NAME:Ljava/lang/String; = "new_display_name"

.field private static final KEY_EDIT_GROUPS_STATE:Ljava/lang/String; = "new_group_state"

.field private static final KEY_EDIT_NAME_PHOTO:Ljava/lang/String; = "edit_name_photo"

.field private static final KEY_EDIT_STATE:Ljava/lang/String; = "state"

.field private static final KEY_GROUP_NAME_CACHE:Ljava/lang/String; = "group_name_cache"

.field private static final KEY_INTENT:Ljava/lang/String; = "intent"

.field private static final KEY_SELECTED_RAW_CONTACT:Ljava/lang/String; = "selected"

.field static final LABEL_OTHER_NOTE_POSITION:I = 0x1

.field static final LABEL_OTHER_ORGANIZATION_POSITION:I = 0x0

.field static final LABEL_PICKER_EMAIL_POSITION:I = 0x1

.field static final LABEL_PICKER_EVENT:I = 0x4

.field static final LABEL_PICKER_IM_POSITION:I = 0x2

.field static final LABEL_PICKER_OTHER_POSITION:I = 0x5

.field static final LABEL_PICKER_PHONES_POSITION:I = 0x0

.field static final LABEL_PICKER_POSTAL_POSITION:I = 0x3

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xbcd

.field private static final REQUEST_BASE:I = 0xf0000

.field private static final REQUEST_CODE_CROP_ITEM_REQ:I = 0xf0003

.field private static final REQUEST_CODE_GROUP_PICKED:I = 0xf0001

.field private static final REQUEST_CODE_TAKE_PICTURE:I = 0xf0002

.field private static final REQUEST_CODE_TAKE_PICTURE_SNAPBOOTH:I = 0xf0006

.field private static final REQUEST_EDITED_RAW_CONTACT:I = 0xf0004

.field private static final REQUEST_EDIT_EXCHANGE_NAME:I = 0xf0005

.field private static final TAG:Ljava/lang/String; = "EditContactActivity2"

.field private static mAccountPrefs:Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;


# instance fields
.field private bCompanyChanged:Z

.field private facebookIconForLarge:[B

.field private facebookIconForThumbnailData:[B

.field private isGooglePlusLogin:Z

.field private isProfile:Z

.field private linkTitle:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

.field private mActivityActive:Z

.field private mChangeAccountItemListener:Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContentViewIsReady:Z

.field private mDetectGotoHome:Z

.field private mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

.field private mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

.field mGroupActionListener:Landroid/view/View$OnClickListener;

.field protected mHandler:Landroid/os/Handler;

.field private mHiddenHtcNotes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIsFirstCreate:Z

.field private mIsTryDoSaveAction:Z

.field private mListNewAddedGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;>;"
        }
    .end annotation
.end field

.field private mManagedDialogWeakRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Dialog;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPeople:Lcom/android/htccontacts/link/MergeContact;

.field private mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

.field private mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

.field private mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

.field private mRootLayoutView:Landroid/view/View;

.field private mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mService:Lcom/android/syncml/service/ISyncMLService;

.field private mState:Lcom/android/htccontacts/model/EntityDeltaList;

.field private mTabRawContacts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mbFacebookLogin:Z

.field private mbQueryEntitiesTaskDone:Z

.field private mbQueryNamePhotoTaskDone:Z

.field private mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

.field private mimageViewPhoto:Lcom/htc/widget/HeaderBarImage;

.field private mllTitle:Landroid/view/View;

.field private msFacebookMeLargeBuddyIconUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mAccountPrefs:Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/app/BaseActivity;-><init>()V

    .line 186
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mManagedDialogWeakRefs:Ljava/util/ArrayList;

    .line 234
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsFirstCreate:Z

    .line 254
    iput-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    .line 255
    iput-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->linkTitle:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    .line 267
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbQueryNamePhotoTaskDone:Z

    .line 268
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbQueryEntitiesTaskDone:Z

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mHiddenHtcNotes:Ljava/util/HashMap;

    .line 274
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 279
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$1;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mConnection:Landroid/content/ServiceConnection;

    .line 510
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$7;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$7;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mHandler:Landroid/os/Handler;

    .line 2816
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mTabRawContacts:Landroid/util/SparseArray;

    .line 5048
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$15;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$15;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mGroupActionListener:Landroid/view/View$OnClickListener;

    .line 6834
    return-void
.end method

.method private DismissAndUnManageDialog(Landroid/app/Dialog;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 2735
    if-nez p1, :cond_1

    .line 2744
    :cond_0
    return-void

    .line 2736
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mManagedDialogWeakRefs:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mManagedDialogWeakRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2737
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mManagedDialogWeakRefs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2738
    .local v1, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Dialog;

    .line 2739
    .local v2, theDialog:Landroid/app/Dialog;
    if-ne v2, p1, :cond_2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2740
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/syncml/service/ISyncMLService;)Lcom/android/syncml/service/ISyncMLService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isPhotoEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->ensureFacebookIconForThumbnailData()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/htccontacts/ui/EditContactActivity2;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForThumbnailData:[B

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->msFacebookMeLargeBuddyIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/htccontacts/ui/EditContactActivity2;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleSelectPhoto(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleRequestNameEditing(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/link/MergeContact;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->pickPhoto()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/htc/widget/HeaderBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->updateNamePhoto()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDeltaList;)Lcom/android/htccontacts/model/EntityDeltaList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->launchExchangeNameEditor()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getJoinNamesDisplayName(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doEditMyContactName()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doSaveAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mHiddenHtcNotes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsFirstCreate:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsFirstCreate:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/htccontacts/ui/EditContactActivity2;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->insertSelfToNewAddedGroups(J)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doRevertAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Lcom/android/htccontacts/ui/EditContactActivity2;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->broadcastFavoriteChangeIntent(J)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    return-object v0
.end method

.method static synthetic access$5400()Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mAccountPrefs:Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$5600(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialogDelayed(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$5700(Landroid/app/Activity;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getPreRequestOpenAccoutType(Landroid/app/Activity;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-static {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getPreRequestOpenAccoutName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 163
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->pickRequestOpenAccountListWithType(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/htccontacts/ui/EditContactActivity2;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/ContentResolver;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getTheOnlyViewAccountType(Landroid/content/ContentResolver;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6100(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 163
    invoke-static {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->isAcceptExtraData(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->checkAccountChange(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$6800(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/htccontacts/ui/EditContactActivity2;)Lcom/android/htccontacts/ui/widget/ContactEditorView2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/htccontacts/ui/EditContactActivity2;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->ensureFacebookIconForLarge()V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$8200(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$8300(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$8400(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->DismissAndUnManageDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$8602(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoFacebookMe()V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoAction()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8900(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoCamera()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/htccontacts/ui/EditContactActivity2;)[B
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForLarge:[B

    return-object v0
.end method

.method static synthetic access$9000(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoSnapbooth()V

    return-void
.end method

.method static synthetic access$9200(Lcom/android/htccontacts/ui/EditContactActivity2;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->controlSaveButtonEnabled()V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$9400(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$9500(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->checkCompanyData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$9600(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->bCompanyChanged:Z

    return v0
.end method

.method static synthetic access$9602(Lcom/android/htccontacts/ui/EditContactActivity2;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->bCompanyChanged:Z

    return p1
.end method

.method static synthetic access$9700(Lcom/android/htccontacts/ui/EditContactActivity2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    return v0
.end method

.method private assignEditorState(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V
    .locals 1
    .parameter "states"
    .parameter "sources"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->initEditorMonitor(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 693
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    invoke-virtual {v0, p1, p2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setState(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 694
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->resetAllFlagAndAttribute()V

    .line 695
    return-void
.end method

.method private autoSave()V
    .locals 1

    .prologue
    .line 3886
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    if-nez v0, :cond_0

    .line 3887
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v0}, Lcom/htc/widget/HtcFooterButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3888
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    .line 3897
    :cond_0
    :goto_0
    return-void

    .line 3891
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doSaveAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    .line 3892
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    if-nez v0, :cond_0

    .line 3893
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    goto :goto_0
.end method

.method private broadcastFavoriteChangeIntent(J)V
    .locals 17
    .parameter "contactId"

    .prologue
    .line 7086
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 7088
    .local v10, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .line 7090
    .local v8, isFavorite:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v15}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta;

    .line 7092
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 7093
    .local v13, v:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v13}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v15

    if-nez v15, :cond_2

    .line 7094
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "starred"

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 7095
    .local v12, starredValue:Ljava/lang/Integer;
    if-eqz v12, :cond_2

    .line 7096
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 7097
    .local v11, starred:I
    if-nez v8, :cond_1

    if-lez v11, :cond_4

    :cond_1
    const/4 v8, 0x1

    .line 7100
    .end local v11           #starred:I
    .end local v12           #starredValue:Ljava/lang/Integer;
    :cond_2
    :goto_0
    const-string v15, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v2, v15}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 7101
    .local v9, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v9, :cond_0

    .line 7102
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 7103
    .local v14, value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v15

    if-nez v15, :cond_3

    .line 7104
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7106
    .local v3, gId:Ljava/lang/String;
    const/4 v6, 0x0

    .line 7107
    .local v6, id:I
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 7108
    .local v7, integer:Ljava/lang/Integer;
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 7109
    :goto_2
    if-lez v6, :cond_3

    .line 7110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7112
    .end local v7           #integer:Ljava/lang/Integer;
    :catch_0
    move-exception v15

    goto :goto_1

    .line 7097
    .end local v3           #gId:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #id:I
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v14           #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v11       #starred:I
    .restart local v12       #starredValue:Ljava/lang/Integer;
    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    .line 7108
    .end local v11           #starred:I
    .end local v12           #starredValue:Ljava/lang/Integer;
    .restart local v3       #gId:Ljava/lang/String;
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #id:I
    .restart local v7       #integer:Ljava/lang/Integer;
    .restart local v9       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v14       #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 7117
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v3           #gId:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #id:I
    .end local v7           #integer:Ljava/lang/Integer;
    .end local v9           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v13           #v:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v14           #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_6
    if-eqz v8, :cond_7

    .line 7118
    const/4 v15, -0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7120
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v15, v0, v1, v10}, Lcom/android/htccontacts/util/ContactsUtils;->broadcastFavoriteIntentWithGroupId(Landroid/content/Context;JLjava/util/ArrayList;)V

    .line 7121
    return-void
.end method

.method private static final checkAccountChange(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountWithDataSet;)Z
    .locals 4
    .parameter "delta"
    .parameter "account"

    .prologue
    .line 7336
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 7337
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 7338
    .local v2, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "account_name"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7339
    .local v0, accountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7340
    .local v1, accountType:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 7341
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 7342
    iget-object v3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7343
    const/4 v3, 0x0

    .line 7348
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private checkCompanyData()Z
    .locals 1

    .prologue
    .line 6795
    const/4 v0, 0x1

    return v0
.end method

.method private static checkDisplayNameEmpty(Lcom/android/htccontacts/model/EntityDelta;)Z
    .locals 8
    .parameter "state"

    .prologue
    const/4 v6, 0x0

    .line 6647
    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {p0, v7}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6649
    .local v1, deltas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v4, 0x0

    .line 6650
    .local v4, hasName:Z
    if-eqz v1, :cond_2

    .line 6651
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 6652
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 6655
    const-string v7, "data3"

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6657
    .local v2, familyName:Ljava/lang/String;
    const-string v7, "data2"

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6659
    .local v3, givenName:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 6660
    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 6661
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6663
    :cond_1
    const/4 v4, 0x1

    .line 6668
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #familyName:Ljava/lang/String;
    .end local v3           #givenName:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    if-nez v4, :cond_5

    const/4 v6, 0x1

    :goto_2
    return v6

    .restart local v0       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v2       #familyName:Ljava/lang/String;
    .restart local v3       #givenName:Ljava/lang/String;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_3
    move-object v2, v6

    .line 6659
    goto :goto_0

    :cond_4
    move-object v3, v6

    .line 6660
    goto :goto_1

    .line 6668
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v2           #familyName:Ljava/lang/String;
    .end local v3           #givenName:Ljava/lang/String;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method private checkFavoriteAndReset(Lcom/android/htccontacts/model/EntityDelta;)Z
    .locals 10
    .parameter "state"

    .prologue
    .line 5608
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 5609
    .local v3, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const/4 v2, 0x1

    .line 5610
    .local v2, canChange:Z
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v5

    .line 5611
    .local v5, isUpdated:Z
    if-eqz v5, :cond_1

    .line 5612
    const-string v8, "starred"

    invoke-virtual {v3, v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isUpdateForInteger(Ljava/lang/String;)Z

    move-result v4

    .line 5613
    .local v4, isUpdate:Z
    if-eqz v4, :cond_0

    .line 5614
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v0

    .line 5615
    .local v0, after:Landroid/content/ContentValues;
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getBefore()Landroid/content/ContentValues;

    move-result-object v1

    .line 5616
    .local v1, before:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 5617
    const-string v8, "starred"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 5618
    .local v7, starred:Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    .line 5619
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasPhoneOrMail(Lcom/android/htccontacts/model/EntityDelta;)Z

    move-result v2

    .line 5620
    if-nez v2, :cond_0

    .line 5621
    const-string v8, "starred"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 5622
    .local v6, oldvalue:Ljava/lang/Integer;
    const-string v8, "starred"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v3, v8, v9}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 5640
    .end local v0           #after:Landroid/content/ContentValues;
    .end local v1           #before:Landroid/content/ContentValues;
    .end local v4           #isUpdate:Z
    .end local v6           #oldvalue:Ljava/lang/Integer;
    .end local v7           #starred:Ljava/lang/Integer;
    :cond_0
    :goto_0
    return v2

    .line 5628
    :cond_1
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 5629
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v0

    .line 5630
    .restart local v0       #after:Landroid/content/ContentValues;
    if-eqz v0, :cond_0

    .line 5631
    const-string v8, "starred"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    .line 5632
    .restart local v7       #starred:Ljava/lang/Integer;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lez v8, :cond_0

    .line 5633
    invoke-direct {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasPhoneOrMail(Lcom/android/htccontacts/model/EntityDelta;)Z

    move-result v2

    .line 5634
    if-nez v2, :cond_0

    .line 5635
    const-string v8, "starred"

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private checkNumberEmpty(Lcom/android/htccontacts/model/EntityDelta;)Z
    .locals 7
    .parameter "state"

    .prologue
    .line 6628
    const-string v6, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v6}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 6629
    .local v1, deltas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v2, 0x0

    .line 6630
    .local v2, hasPhone:Z
    if-eqz v1, :cond_1

    .line 6631
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 6632
    .local v0, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v6

    if-nez v6, :cond_0

    .line 6635
    const-string v6, "data1"

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6636
    .local v4, number:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 6637
    .local v5, trimNumber:Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 6638
    const/4 v2, 0x1

    .line 6643
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #trimNumber:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_3

    const/4 v6, 0x1

    :goto_1
    return v6

    .line 6636
    .restart local v0       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #number:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 6643
    .end local v0           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #number:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private controlSaveButtonEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6731
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6765
    :cond_0
    :goto_0
    return-void

    .line 6734
    :cond_1
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isTmousCustomization()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6735
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-static {v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->ensureIfNabHasNoNameData(Lcom/android/htccontacts/model/EntityDeltaList;)Z

    move-result v0

    .line 6737
    .local v0, isNoName:Z
    if-eqz v0, :cond_2

    .line 6738
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 6742
    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 6746
    .end local v0           #isNoName:Z
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->ensureIfReadOnlyRawContact(Lcom/android/htccontacts/model/EntityDeltaList;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6747
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 6752
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 6756
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-direct {p0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->ensureIfSIMHasNoNumber(Lcom/android/htccontacts/model/EntityDeltaList;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6757
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0

    .line 6762
    :cond_5
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method private createCustomDialog(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;)Landroid/app/Dialog;
    .locals 4
    .parameter "kind"
    .parameter "type"

    .prologue
    .line 7060
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 7061
    .local v1, customType:Landroid/widget/EditText;
    const/16 v2, 0x2001

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 7062
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 7064
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 7065
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a0163

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7066
    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7068
    const v2, 0x104000a

    new-instance v3, Lcom/android/htccontacts/ui/EditContactActivity2$19;

    invoke-direct {v3, p0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$19;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7080
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 7082
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    return-object v2
.end method

.method private createDeleteDialog()Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 4960
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4961
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v1, 0x7f0a0147

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4963
    const v1, 0x7f0a0148

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4964
    const v1, 0x104000a

    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$14;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$14;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4975
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4976
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 4977
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createDownloadFacdbookMePhotoDialog(Landroid/os/Bundle;)Lcom/htc/widget/HtcAlertDialog;
    .locals 12
    .parameter "b"

    .prologue
    const/4 v2, 0x0

    .line 5838
    const-string v0, "content://com.htc.socialnetwork.facebook/rawquery"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 5840
    .local v1, RAWQUERY_CONTENT_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "select largeBuddyIconUrl from person where uid in (select loginId from accounts where defaultAccount=1)"

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 5843
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_2

    .line 5844
    const/4 v10, 0x0

    .line 5845
    .local v10, sBuddyIconUrl:Ljava/lang/String;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5846
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 5848
    :cond_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5849
    iput-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->msFacebookMeLargeBuddyIconUrl:Ljava/lang/String;

    .line 5852
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 5853
    const/4 v7, 0x0

    .line 5857
    .end local v10           #sBuddyIconUrl:Ljava/lang/String;
    :cond_2
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 5858
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f03003e

    invoke-virtual {v9, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 5860
    .local v11, view:Landroid/view/View;
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0a01eb

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 5863
    .local v6, alertdialogDownload:Lcom/htc/widget/HtcAlertDialog;
    new-instance v8, Lcom/android/htccontacts/ui/EditContactActivity2$17;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$17;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 5868
    .local v8, cancelButtonListener:Landroid/content/DialogInterface$OnClickListener;
    const/4 v0, -0x2

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v2, v8}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 5870
    return-object v6
.end method

.method private createPhotoDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 4982
    const/4 v0, 0x0

    return-object v0
.end method

.method private createRemainTypesPickerDialog()Lcom/htc/widget/HtcAlertDialog;
    .locals 20

    .prologue
    .line 6031
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 6032
    .local v4, groupData:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 6037
    .local v8, childData:Ljava/util/List;,"Ljava/util/List<Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;>;>;"
    const/4 v15, 0x0

    .line 6040
    .local v15, fillitem:Ljava/lang/String;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 6041
    .local v13, curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6042
    const-string v1, "data"

    const v2, 0x7f0a005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6043
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 6046
    .local v17, labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 6048
    .local v11, children:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    .line 6049
    .local v14, data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6050
    .local v12, curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6051
    const-string v1, "data"

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6054
    .end local v12           #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    .end local v14           #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v8, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6060
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 6061
    .restart local v13       #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6062
    const-string v1, "data"

    const v2, 0x7f0a005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6063
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 6064
    .restart local v17       #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    const v1, 0x7f0a005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 6068
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 6071
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    .line 6072
    .restart local v14       #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6073
    .restart local v12       #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6074
    const-string v1, "data"

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 6078
    .end local v12           #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    .end local v14           #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    :cond_1
    const/4 v1, 0x1

    invoke-interface {v8, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6082
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 6083
    .restart local v13       #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6084
    const-string v1, "data"

    const v2, 0x7f0a0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6086
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 6087
    .restart local v17       #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    const v1, 0x7f0a0060

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 6090
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 6093
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    .line 6094
    .restart local v14       #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6095
    .restart local v12       #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6096
    const-string v1, "data"

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 6101
    .end local v12           #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    .end local v14           #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    :cond_2
    const/4 v1, 0x2

    invoke-interface {v8, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6105
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 6106
    .restart local v13       #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6107
    const-string v1, "data"

    const v2, 0x7f0a0061

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6109
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 6112
    .restart local v17       #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 6115
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    .line 6116
    .restart local v14       #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6117
    .restart local v12       #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6118
    const-string v1, "data"

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 6121
    .end local v12           #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    .end local v14           #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    :cond_3
    const/4 v1, 0x3

    invoke-interface {v8, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6126
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 6127
    .restart local v13       #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6128
    const-string v1, "data"

    const v2, 0x7f0a015d

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6130
    new-instance v17, Ljava/util/ArrayList;

    .end local v17           #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 6133
    .restart local v17       #labelList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 6136
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    .line 6137
    .restart local v14       #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 6138
    .restart local v12       #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6139
    const-string v1, "data"

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 6141
    .end local v12           #curChildMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    .end local v14           #data:Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;
    :cond_4
    const/4 v1, 0x4

    invoke-interface {v8, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6148
    const/16 v17, 0x0

    .line 6150
    new-instance v13, Ljava/util/HashMap;

    .end local v13           #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 6151
    .restart local v13       #curGroupMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6152
    const-string v1, "data"

    const v2, 0x7f0a0062

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6154
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .line 6160
    .local v18, labels:[Ljava/lang/String;
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v11

    .line 6178
    const/4 v1, 0x5

    invoke-interface {v8, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6183
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isEspresso()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6184
    new-instance v19, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;-><init>(Landroid/content/Context;)V

    .line 6192
    .local v19, list:Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;
    :goto_5
    const/4 v1, -0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setBackgroundColor(I)V

    .line 6193
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setFadingEdgeLength(I)V

    .line 6194
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setCacheColorHint(I)V

    .line 6195
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080700

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 6196
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080700

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setChildDivider(Landroid/graphics/drawable/Drawable;)V

    .line 6197
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setVerticalScrollBarEnabled(Z)V

    .line 6202
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setFastScrollEnabled(Z)V

    .line 6208
    new-instance v10, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;Lcom/android/htccontacts/ui/EditContactActivity2$1;)V

    .line 6209
    .local v10, childlistener:Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 6210
    new-instance v1, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const v5, 0x103000c

    invoke-direct {v3, v2, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const v5, 0x7f03001c

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v7, "data"

    aput-object v7, v6, v2

    const/4 v2, 0x1

    new-array v7, v2, [I

    const/4 v2, 0x0

    const v9, 0x7f07004b

    aput v9, v7, v2

    const v9, 0x7f03001c

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/htccontacts/ui/EditContactActivity2$CacheInfoExpandableListAdapter;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[ILjava/util/List;I)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 6219
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setCacheColorHint(I)V

    .line 6220
    const/4 v1, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;->setFadingEdgeLength(I)V

    .line 6224
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setInverseBackgroundForced(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a015c

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    return-object v1

    .line 6188
    .end local v10           #childlistener:Lcom/android/htccontacts/ui/EditContactActivity2$OnCacheChildClickListener;
    .end local v19           #list:Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;
    :cond_5
    new-instance v19, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const v3, 0x103000c

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v19

    invoke-direct {v0, v1}, Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;-><init>(Landroid/content/Context;)V

    .restart local v19       #list:Lcom/android/htccontacts/widget/RightIndicatorExpandaleListView;
    goto/16 :goto_5
.end method

.method private doAddAction()Z
    .locals 2

    .prologue
    .line 3959
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$AddContactTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3960
    const/4 v0, 0x1

    return v0
.end method

.method private doAddMore()V
    .locals 1

    .prologue
    const/16 v0, 0xf0

    .line 5959
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->removeDialog(I)V

    .line 5960
    invoke-virtual {p0, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->showDialog(I)V

    .line 5963
    return-void
.end method

.method private doDeleteAction()Z
    .locals 1

    .prologue
    .line 3968
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3971
    :goto_0
    return v0

    .line 3970
    :cond_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->createDeleteDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialog(Landroid/app/Dialog;)V

    .line 3971
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doEditMyContactName()V
    .locals 3

    .prologue
    .line 1272
    new-instance v1, Lcom/android/htccontacts/ui/EditContactActivity2$10;

    invoke-direct {v1, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$10;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 1353
    .local v1, ocl:Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/android/htccontacts/ui/SelectContactNameAdapter;

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;->EditNameData:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v2}, Lcom/android/htccontacts/ui/SelectContactNameAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1355
    .local v0, ad:Lcom/android/htccontacts/ui/SelectContactNameAdapter;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2, v0}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1356
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1357
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v2}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    .line 1358
    return-void
.end method

.method private doEditName()V
    .locals 13

    .prologue
    .line 1362
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v10}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1482
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v9

    .line 1365
    .local v9, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v10}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v7

    .line 1366
    .local v7, size:I
    const-string v10, "EditContactActivity2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "doEditName size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1392
    .local v0, EditNameData:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v1, "name"

    .line 1393
    .local v1, EditNameMapKey_Name:Ljava/lang/String;
    const-string v2, "type"

    .line 1395
    .local v2, EditNameMapKey_Type:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v10, :cond_2

    .line 1396
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v10, v10, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1397
    .local v8, snSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v8, :cond_2

    .line 1398
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1399
    .local v5, m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "type"

    iget-object v11, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v11, v11, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v5, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    const-string v11, "name"

    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v10, v10, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    const-string v12, "display_name"

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1397
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1405
    .end local v4           #i:I
    .end local v5           #m:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8           #snSize:I
    :cond_2
    new-instance v6, Lcom/android/htccontacts/ui/EditContactActivity2$11;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$11;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 1474
    .local v6, ocl:Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v3, Lcom/android/htccontacts/ui/SelectContactNameAdapter;

    invoke-direct {v3, p0, v0}, Lcom/android/htccontacts/ui/SelectContactNameAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1476
    .local v3, ad:Lcom/android/htccontacts/ui/SelectContactNameAdapter;
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v10, v3}, Lcom/htc/widget/HeaderBarDropDown;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1477
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v10, v6}, Lcom/htc/widget/HeaderBarDropDown;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1478
    iget-object v10, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v10}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    goto/16 :goto_0
.end method

.method private doEditPhoto()V
    .locals 15

    .prologue
    const v14, 0x208023f

    const/4 v13, -0x1

    .line 817
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;>;"
    new-instance v8, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v9, 0xb

    iget-object v10, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/htccontacts/util/ContactsUtils;->obtainAlbumTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x208023c

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v13}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    new-instance v8, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v9, 0xc

    iget-object v10, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCameraTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v13}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    const/4 v8, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v9

    if-ne v8, v9, :cond_0

    .line 825
    new-instance v8, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v9, 0x11

    const v10, 0x7f0a012c

    invoke-virtual {p0, v10}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v13}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_0
    const/4 v2, 0x0

    .line 830
    .local v2, hasEditablePhoto:Z
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v8, :cond_2

    .line 831
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v8, v8, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 832
    .local v7, size:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v7, :cond_2

    .line 833
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v8, v8, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 834
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v9, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v10, 0xa

    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v8, v8, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->displayType:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v9, v10, v8, v0, v3}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 835
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v8, v8, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1

    .line 836
    const/4 v2, 0x1

    .line 832
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 840
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v3           #i:I
    .end local v7           #size:I
    :cond_2
    if-eqz v2, :cond_3

    .line 841
    new-instance v8, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v9, 0xf

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a012d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x2080258

    invoke-static {v11, v12}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-direct {v8, v9, v10, v11, v13}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    :cond_3
    new-instance v4, Lcom/android/htccontacts/ui/EditContactActivity2$8;

    invoke-direct {v4, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$8;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 859
    .local v4, ocl:Landroid/content/DialogInterface$OnClickListener;
    new-instance v5, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;

    invoke-direct {v5, p0, v1}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 860
    .local v5, scpAdapter:Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v8, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0a0284

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v6

    .line 864
    .local v6, selectAccountPhotoDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual {v6}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 866
    return-void
.end method

.method private doPickPhotoAction()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3978
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4003
    :goto_0
    return v2

    .line 3980
    :cond_0
    const/4 v1, 0x0

    .line 3981
    .local v1, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3982
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3983
    const-string v2, "crop"

    const-string v4, "true"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3984
    const-string v2, "aspectX"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3985
    const-string v2, "aspectY"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3986
    const-string v2, "outputX"

    sget v4, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3987
    const-string v2, "outputY"

    sget v4, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3988
    const-string v2, "return-data"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3991
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 3992
    const v2, 0xf0003

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v3

    .line 4003
    goto :goto_0

    .line 3994
    :catch_0
    move-exception v0

    .line 3997
    .local v0, e:Landroid/content/ActivityNotFoundException;
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a015e

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0a015f

    invoke-virtual {v2, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v4, 0x7f0a0160

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    goto :goto_1
.end method

.method private doPickPhotoCamera()V
    .locals 4

    .prologue
    .line 5776
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5777
    .local v1, intentCapture:Landroid/content/Intent;
    const-string v2, "RequestedFrom"

    const-string v3, "contacts"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5779
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 5780
    const v2, 0xf0002

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5784
    :goto_0
    return-void

    .line 5781
    :catch_0
    move-exception v0

    .line 5782
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "EditContactActivity2"

    const-string v3, "doPickPhotoCamera ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doPickPhotoFacebookMe()V
    .locals 2

    .prologue
    .line 5771
    const/16 v0, 0xf1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->showDialog(ILandroid/os/Bundle;)Z

    .line 5772
    return-void
.end method

.method private doPickPhotoSnapbooth()V
    .locals 4

    .prologue
    .line 5787
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.snapbooth.action.LAUNCH_SNAPBOOTH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5788
    .local v1, intentSnapbooth:Landroid/content/Intent;
    const-string v2, "RequestedFrom"

    const-string v3, "contacts"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5790
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 5791
    const v2, 0xf0006

    invoke-virtual {p0, v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5795
    :goto_0
    return-void

    .line 5792
    :catch_0
    move-exception v0

    .line 5793
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "EditContactActivity2"

    const-string v3, "doPickPhotoSnapbooth ActivityNotFoundException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private doRevertAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 3920
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 3922
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->popupConfirmCancelDialog()V

    .line 3927
    :goto_0
    return v2

    .line 3926
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    goto :goto_0
.end method

.method private doSaveAction()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3904
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 3905
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3912
    :cond_0
    :goto_0
    return v1

    .line 3906
    :cond_1
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v3}, Lcom/htc/widget/HtcFooterButton;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3908
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->myPhonebookCancelSync()V

    .line 3909
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 3910
    .local v0, task:Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;
    new-array v3, v2, [Lcom/android/htccontacts/model/EntityDeltaList;

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2$PersistTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 3912
    goto :goto_0
.end method

.method private editMyContactName()V
    .locals 4

    .prologue
    .line 1123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryMyContactNameResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameResult;

    .line 1124
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryMyContactNameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1125
    return-void
.end method

.method private editMyContactPhoto()V
    .locals 37

    .prologue
    .line 1136
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    if-nez v32, :cond_6

    .line 1137
    new-instance v32, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    invoke-direct/range {v32 .. v32}, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->hasNonSocialnetworkPhoto:Z

    .line 1139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_5

    const/16 v32, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_5

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v21

    .line 1143
    .local v21, nSize:I
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v28

    .line 1144
    .local v28, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    move/from16 v0, v21

    if-ge v13, v0, :cond_5

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/htccontacts/model/EntityDelta;

    .line 1146
    .local v11, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v11}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v30

    .line 1147
    .local v30, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v30 .. v30}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v32

    if-nez v32, :cond_1

    .line 1144
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1148
    :cond_1
    const-string v32, "account_type"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1149
    .local v6, accountType:Ljava/lang/String;
    const-string v32, "data_set"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1151
    .local v10, dataSet:Ljava/lang/String;
    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v10}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v27

    .line 1152
    .local v27, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual/range {v27 .. v27}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/htccontacts/model/DataKind;

    .line 1153
    .local v16, kind:Lcom/android/htccontacts/model/DataKind;
    move-object/from16 v0, v16

    iget-object v9, v0, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1154
    .local v9, dataMimeType:Ljava/lang/String;
    const-string v32, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_2

    .line 1155
    const-string v32, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-static {v11, v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    invoke-virtual {v11, v9}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    .line 1158
    const/4 v15, 0x0

    .local v15, j:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v15, v0, :cond_2

    .line 1159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1160
    .local v31, vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v32, "data7"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1161
    .local v5, LType:Ljava/lang/Long;
    if-eqz v5, :cond_3

    const-wide/16 v32, 0x0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    cmp-long v32, v32, v34

    if-nez v32, :cond_4

    .line 1163
    :cond_3
    const-string v32, "data15"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v24

    .line 1164
    .local v24, photoBytes:[B
    if-eqz v24, :cond_4

    .line 1165
    const/16 v32, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v33, v0

    move-object/from16 v0, v24

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1166
    .local v7, b:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_4

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->hasNonSocialnetworkPhoto:Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iput-object v7, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    .line 1158
    .end local v7           #b:Landroid/graphics/Bitmap;
    .end local v24           #photoBytes:[B
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 1179
    .end local v5           #LType:Ljava/lang/Long;
    .end local v6           #accountType:Ljava/lang/String;
    .end local v9           #dataMimeType:Ljava/lang/String;
    .end local v10           #dataSet:Ljava/lang/String;
    .end local v11           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v13           #i:I
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v15           #j:I
    .end local v16           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v21           #nSize:I
    .end local v27           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v28           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v30           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v31           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/htc/util/contacts/ContactsUtility;->getCacheMyContactIds(Landroid/content/ContentResolver;)Landroid/os/Bundle;

    move-result-object v8

    .line 1180
    .local v8, bundleMyContactIds:Landroid/os/Bundle;
    if-eqz v8, :cond_6

    const-string v32, "contact_id"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    const-string v32, "_id"

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    const-string v33, "contact_id"

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->myContactId:J

    .line 1182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    const-string v33, "_id"

    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v33

    move-wide/from16 v0, v33

    move-object/from16 v2, v32

    iput-wide v0, v2, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->myContactRawId:J

    .line 1188
    .end local v8           #bundleMyContactIds:Landroid/os/Bundle;
    :cond_6
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    .local v12, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;>;"
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/htccontacts/util/ContactsUtils;->obtainAlbumTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x208023c

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v35

    const/16 v36, -0x1

    invoke-direct/range {v32 .. v36}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/android/htccontacts/util/ContactsUtils;->obtainCameraTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x208023f

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v35

    const/16 v36, -0x1

    invoke-direct/range {v32 .. v36}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1194
    const/16 v32, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_7

    .line 1196
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0x11

    const v34, 0x7f0a012c

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x208023f

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v35

    const/16 v36, -0x1

    invoke-direct/range {v32 .. v36}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    sget v33, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    sget v34, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->ICON_SIZE:I

    invoke-static/range {v32 .. v34}, Lcom/htc/util/contacts/PhotoUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 1200
    .local v29, thumbnail:Landroid/graphics/Bitmap;
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0a011f

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    const/16 v35, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v29

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    if-nez v32, :cond_8

    .line 1265
    :goto_2
    return-void

    .line 1203
    :cond_8
    const/4 v15, 0x0

    .restart local v15       #j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v32

    move/from16 v0, v32

    if-ge v15, v0, :cond_d

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->valuesDeltaPhoto:Ljava/util/ArrayList;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 1205
    .restart local v31       #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v32, "data7"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 1206
    .restart local v5       #LType:Ljava/lang/Long;
    if-eqz v5, :cond_9

    const-wide/16 v32, 0x0

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    cmp-long v32, v32, v34

    if-nez v32, :cond_a

    .line 1203
    :cond_9
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1209
    :cond_a
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    .line 1210
    .local v19, lType:J
    const-wide/16 v32, 0x1

    cmp-long v32, v32, v19

    if-nez v32, :cond_b

    .line 1211
    const-string v32, "_id"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1212
    .local v17, lPhotoId:J
    const/16 v32, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 1213
    .local v23, photo:Landroid/graphics/Bitmap;
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0a00f8

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1222
    .end local v17           #lPhotoId:J
    .end local v23           #photo:Landroid/graphics/Bitmap;
    :cond_b
    const-wide/16 v32, 0x3

    cmp-long v32, v32, v19

    if-nez v32, :cond_c

    .line 1223
    const-string v32, "_id"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1224
    .restart local v17       #lPhotoId:J
    const/16 v32, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 1225
    .restart local v23       #photo:Landroid/graphics/Bitmap;
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0a00fa

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1226
    .end local v17           #lPhotoId:J
    .end local v23           #photo:Landroid/graphics/Bitmap;
    :cond_c
    const-wide/16 v32, 0x4

    cmp-long v32, v32, v19

    if-nez v32, :cond_9

    .line 1227
    const-string v32, "_id"

    invoke-virtual/range {v31 .. v32}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 1228
    .restart local v17       #lPhotoId:J
    const/16 v32, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 1229
    .restart local v23       #photo:Landroid/graphics/Bitmap;
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0x10

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0a00fc

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1235
    .end local v5           #LType:Ljava/lang/Long;
    .end local v17           #lPhotoId:J
    .end local v19           #lType:J
    .end local v23           #photo:Landroid/graphics/Bitmap;
    .end local v31           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    move/from16 v32, v0

    if-eqz v32, :cond_e

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v32, v0

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto_Id:Ljava/lang/Long;

    move-object/from16 v32, v0

    if-eqz v32, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusDisplayType:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v32

    if-nez v32, :cond_e

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto_Id:Ljava/lang/Long;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    const/16 v34, 0x0

    invoke-static/range {v32 .. v34}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 1238
    .restart local v23       #photo:Landroid/graphics/Bitmap;
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusDisplayType:Ljava/lang/String;

    move-object/from16 v34, v0

    const/16 v35, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v23

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1242
    .end local v23           #photo:Landroid/graphics/Bitmap;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v32, v0

    if-eqz v32, :cond_f

    .line 1243
    new-instance v32, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;

    const/16 v33, 0xf

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0a012d

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x2080258

    invoke-static/range {v35 .. v36}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v35

    const/16 v36, -0x1

    invoke-direct/range {v32 .. v36}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter$Entry;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;I)V

    move-object/from16 v0, v32

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_f
    new-instance v22, Lcom/android/htccontacts/ui/EditContactActivity2$9;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$9;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 1258
    .local v22, ocl:Landroid/content/DialogInterface$OnClickListener;
    new-instance v25, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1259
    .local v25, scpAdapter:Lcom/android/htccontacts/ui/SelectContactPhotoAdapter;
    new-instance v32, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v33, 0x7f0a0284

    invoke-virtual/range {v32 .. v33}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v26

    .line 1263
    .local v26, selectAccountPhotoDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-virtual/range {v26 .. v26}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto/16 :goto_2
.end method

.method private ensureFacebookIconForLarge()V
    .locals 7

    .prologue
    .line 5921
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForLarge:[B

    if-nez v4, :cond_0

    .line 5922
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20802f5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5923
    .local v0, bmFicon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 5924
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v3, v4, 0x4

    .line 5925
    .local v3, size:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 5927
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5928
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 5929
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5931
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForLarge:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5935
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5936
    :goto_0
    const/4 v0, 0x0

    .line 5941
    .end local v0           #bmFicon:Landroid/graphics/Bitmap;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    :cond_0
    return-void

    .line 5932
    .restart local v0       #bmFicon:Landroid/graphics/Bitmap;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    :catch_0
    move-exception v1

    .line 5933
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureFacebookIconForLarge Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5935
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5936
    const/4 v0, 0x0

    .line 5935
    throw v4
.end method

.method private ensureFacebookIconForThumbnailData()V
    .locals 7

    .prologue
    .line 5900
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForThumbnailData:[B

    if-nez v4, :cond_0

    .line 5901
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x20802f4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 5902
    .local v0, bmFicon:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 5903
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    mul-int/lit8 v3, v4, 0x4

    .line 5904
    .local v3, size:I
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 5906
    .local v2, out:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 5907
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 5908
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 5910
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->facebookIconForThumbnailData:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5914
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5915
    :goto_0
    const/4 v0, 0x0

    .line 5919
    .end local v0           #bmFicon:Landroid/graphics/Bitmap;
    .end local v2           #out:Ljava/io/ByteArrayOutputStream;
    .end local v3           #size:I
    :cond_0
    return-void

    .line 5911
    .restart local v0       #bmFicon:Landroid/graphics/Bitmap;
    .restart local v2       #out:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #size:I
    :catch_0
    move-exception v1

    .line 5912
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v4, "EditContactActivity2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureFacebookIconForThumbnailData Unable to serialize photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5914
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 5915
    const/4 v0, 0x0

    .line 5914
    throw v4
.end method

.method private static final ensureIfNabHasNoNameData(Lcom/android/htccontacts/model/EntityDeltaList;)Z
    .locals 7
    .parameter "set"

    .prologue
    .line 6672
    const/4 v4, 0x0

    .line 6673
    .local v4, result:Z
    invoke-virtual {p0}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    .line 6674
    .local v5, state:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 6675
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v2, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6676
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, "com.tmobile.nab"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6677
    invoke-static {v5}, Lcom/android/htccontacts/ui/EditContactActivity2;->checkDisplayNameEmpty(Lcom/android/htccontacts/model/EntityDelta;)Z

    move-result v1

    .line 6678
    .local v1, check:Z
    if-eqz v1, :cond_0

    .line 6679
    const/4 v4, 0x1

    .line 6683
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #check:Z
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v4           #result:Z
    .end local v5           #state:Lcom/android/htccontacts/model/EntityDelta;
    :cond_1
    return v4
.end method

.method private final ensureIfReadOnlyRawContact(Lcom/android/htccontacts/model/EntityDeltaList;)Z
    .locals 9
    .parameter "set"

    .prologue
    .line 6687
    const/4 v4, 0x0

    .line 6688
    .local v4, result:Z
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta;

    .line 6689
    .local v7, state:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v2

    .line 6690
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v8, "account_type"

    invoke-virtual {v2, v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6691
    .local v0, accountType:Ljava/lang/String;
    const-string v8, "data_set"

    invoke-virtual {v2, v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6692
    .local v1, dataSet:Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v8, "com.anddroid.contacts.sim"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 6693
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v6

    .line 6695
    .local v6, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v6, v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v5

    .line 6698
    .local v5, source:Lcom/android/htccontacts/model/AccountType;
    iget-boolean v8, v5, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    if-eqz v8, :cond_0

    .line 6699
    const/4 v4, 0x1

    .line 6703
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v4           #result:Z
    .end local v5           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v6           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v7           #state:Lcom/android/htccontacts/model/EntityDelta;
    :cond_2
    return v4
.end method

.method private final ensureIfSIMHasNoNumber(Lcom/android/htccontacts/model/EntityDeltaList;)Z
    .locals 6
    .parameter "set"

    .prologue
    .line 6707
    const/4 v3, 0x0

    .line 6708
    .local v3, result:Z
    invoke-virtual {p1}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/htccontacts/model/EntityDelta;

    .line 6709
    .local v4, state:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 6710
    .local v1, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v5, "account_type"

    invoke-virtual {v1, v5}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6711
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "com.anddroid.contacts.sim"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6712
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->checkNumberEmpty(Lcom/android/htccontacts/model/EntityDelta;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 6713
    const/4 v3, 0x1

    .line 6717
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v3           #result:Z
    .end local v4           #state:Lcom/android/htccontacts/model/EntityDelta;
    :cond_1
    return v3
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getJoinNamesDisplayName(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    .line 578
    if-eqz p1, :cond_0

    .line 579
    const-string v7, "data4"

    invoke-virtual {p1, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 580
    .local v5, prefix:Ljava/lang/String;
    const-string v7, "data6"

    invoke-virtual {p1, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 581
    .local v6, suffix:Ljava/lang/String;
    const-string v7, "data2"

    invoke-virtual {p1, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, given:Ljava/lang/String;
    const-string v7, "data5"

    invoke-virtual {p1, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 583
    .local v3, middle:Ljava/lang/String;
    const-string v7, "data3"

    invoke-virtual {p1, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, family:Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 585
    .local v4, names:Landroid/content/ContentValues;
    const-string v7, "data4"

    invoke-virtual {v4, v7, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const-string v7, "data6"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    const-string v7, "data2"

    invoke-virtual {v4, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const-string v7, "data5"

    invoke-virtual {v4, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    const-string v7, "data3"

    invoke-virtual {v4, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/android/htccontacts/util/NameUtility;->joinNames(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v2

    .line 591
    .local v2, joinNames:Landroid/content/ContentValues;
    if-eqz v2, :cond_0

    .line 592
    const-string v7, "data1"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 595
    .end local v0           #family:Ljava/lang/String;
    .end local v1           #given:Ljava/lang/String;
    .end local v2           #joinNames:Landroid/content/ContentValues;
    .end local v3           #middle:Ljava/lang/String;
    .end local v4           #names:Landroid/content/ContentValues;
    .end local v5           #prefix:Ljava/lang/String;
    .end local v6           #suffix:Ljava/lang/String;
    :goto_0
    return-object v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private static getPreRequestOpenAccoutName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 3
    .parameter "activity"

    .prologue
    .line 7210
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 7211
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7212
    .local v0, accountName:Ljava/lang/String;
    return-object v0
.end method

.method private static getPreRequestOpenAccoutType(Landroid/app/Activity;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .locals 4
    .parameter "activity"

    .prologue
    .line 7195
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 7196
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "requestAccountType"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7197
    .local v0, accountType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 7198
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7201
    :cond_0
    const-string v3, "requestDataSet"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7202
    .local v1, dataSet:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 7203
    const-string v3, "data_set"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7206
    :cond_1
    invoke-static {v0, v1}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v3

    return-object v3
.end method

.method private getTheOnlyViewAccountType(Landroid/content/ContentResolver;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .locals 17
    .parameter "resolver"

    .prologue
    .line 7125
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 7126
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Lcom/android/htccontacts/model/AccountTypeWithDataSet;Ljava/lang/Boolean;>;"
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "account_type"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "ungrouped_visible"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "data_set"

    aput-object v1, v2, v0

    .line 7131
    .local v2, projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Settings;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7133
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 7135
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7136
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 7137
    .local v14, type:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 7138
    .local v16, visible:I
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 7139
    .local v8, dataSet:Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 7140
    invoke-virtual {v10, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7141
    invoke-static {v14, v8}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v1

    if-lez v16, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 7146
    .end local v8           #dataSet:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    .end local v16           #visible:I
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 7141
    .restart local v8       #dataSet:Ljava/lang/String;
    .restart local v14       #type:Ljava/lang/String;
    .restart local v16       #visible:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 7146
    .end local v8           #dataSet:Ljava/lang/String;
    .end local v14           #type:Ljava/lang/String;
    .end local v16           #visible:I
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7150
    :cond_3
    const-string v0, "com.google"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7151
    const-string v0, "com.google"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 7153
    .local v13, setting_visible:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title"

    const-string v4, "My Contacts"

    invoke-static {v1, v4}, Lcom/android/htccontacts/util/ContactsUtils;->getEqualWhereString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "auto_add"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "group_is_read_only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7160
    .local v3, selection:Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    .end local v2           #projection:[Ljava/lang/String;
    const/4 v0, 0x0

    const-string v1, "group_visible"

    aput-object v1, v2, v0

    .line 7163
    .restart local v2       #projection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 7164
    if-eqz v6, :cond_6

    .line 7166
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7167
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 7168
    .restart local v16       #visible:I
    const-string v0, "com.google"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v1

    if-gtz v16, :cond_4

    if-eqz v13, :cond_9

    :cond_4
    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v10, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7171
    .end local v16           #visible:I
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 7176
    .end local v3           #selection:Ljava/lang/String;
    .end local v13           #setting_visible:Z
    :cond_6
    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    .line 7177
    .local v12, sets:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    const/4 v7, 0x0

    .line 7178
    .local v7, counts:I
    const/4 v11, 0x0

    .line 7179
    .local v11, onlyType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    .line 7180
    .local v15, typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v16

    .line 7181
    .local v16, visible:Z
    if-eqz v16, :cond_7

    .line 7182
    add-int/lit8 v7, v7, 0x1

    .line 7183
    const/4 v0, 0x2

    if-lt v7, v0, :cond_a

    .line 7184
    const/4 v11, 0x0

    .line 7190
    .end local v15           #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v16           #visible:Z
    :cond_8
    return-object v11

    .line 7168
    .end local v7           #counts:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #onlyType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .end local v12           #sets:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v13       #setting_visible:Z
    .local v16, visible:I
    :cond_9
    const/4 v0, 0x0

    goto :goto_2

    .line 7171
    .end local v16           #visible:I
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 7187
    .end local v3           #selection:Ljava/lang/String;
    .end local v13           #setting_visible:Z
    .restart local v7       #counts:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #onlyType:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .restart local v12       #sets:Ljava/util/Set;,"Ljava/util/Set<Lcom/android/htccontacts/model/AccountTypeWithDataSet;>;"
    .restart local v15       #typeWithDataSet:Lcom/android/htccontacts/model/AccountTypeWithDataSet;
    .local v16, visible:Z
    :cond_a
    move-object v11, v15

    goto :goto_3
.end method

.method private static getTypeDispalyText(Landroid/content/Context;Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "entity"
    .parameter "source"
    .parameter "mimetype"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/htccontacts/model/EntityDelta;",
            "Lcom/android/htccontacts/model/AccountType;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 5981
    .local p4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;>;"
    invoke-virtual {p2, p3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v1

    .line 5983
    .local v1, datakind:Lcom/android/htccontacts/model/DataKind;
    if-nez v1, :cond_1

    .line 5984
    const/4 v9, 0x0

    new-array v7, v9, [Ljava/lang/String;

    .line 6007
    :cond_0
    :goto_0
    return-object v7

    .line 5987
    :cond_1
    invoke-static {p1, v1}, Lcom/android/htccontacts/model/EntityModifier;->getValidTypes(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Ljava/util/ArrayList;

    move-result-object v8

    .line 5989
    .local v8, validTypes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountType$EditType;>;"
    const/4 v7, 0x0

    .line 5991
    .local v7, types:[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5992
    .local v0, array:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_3

    .line 5993
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/AccountType$EditType;

    .line 5994
    .local v6, type:Lcom/android/htccontacts/model/AccountType$EditType;
    iget v3, v6, Lcom/android/htccontacts/model/AccountType$EditType;->labelRes:I

    .line 5995
    .local v3, res:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 5996
    .local v5, text:Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5997
    if-eqz p4, :cond_2

    .line 5998
    new-instance v9, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v6, v10}, Lcom/android/htccontacts/ui/EditContactActivity2$LabelData;-><init>(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/AccountType$EditType;Ljava/lang/String;)V

    invoke-virtual {p4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6002
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #res:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #type:Lcom/android/htccontacts/model/AccountType$EditType;
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 6003
    .local v4, size:I
    new-array v7, v4, [Ljava/lang/String;

    .line 6004
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 6005
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method private handleGroupPickedResult(IILandroid/content/Intent;)V
    .locals 47
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 5390
    const v3, 0xf0001

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    .line 5391
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v3

    if-nez v3, :cond_1

    .line 5577
    :cond_0
    :goto_0
    return-void

    .line 5395
    :cond_1
    const-string v3, "extra_info_index"

    const/4 v4, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    .line 5397
    .local v30, nSelectIndex:I
    if-ltz v30, :cond_0

    .line 5399
    const-string v3, "SELECTED_ID"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v37

    .line 5400
    .local v37, selectedId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v3, "SELECTED_TITLE"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v39

    .line 5402
    .local v39, selectedTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "SELECTED_GROUP_IS_READ_ONLY"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v36

    .line 5403
    .local v36, selectedGroupIsReadOnly:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lcom/android/htccontacts/ui/EditContactActivity2;->createGroupStructureList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v23

    .line 5407
    .local v23, groupStructureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 5408
    .local v33, newId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 5409
    .local v29, missingId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 5415
    .local v22, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v41

    .line 5416
    .local v41, state:Lcom/android/htccontacts/model/EntityDelta;
    if-eqz v41, :cond_0

    .line 5420
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v46

    .line 5422
    .local v46, valuesList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v46, :cond_3

    .line 5423
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 5424
    .local v45, valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v45 .. v45}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5425
    const-string v3, "data1"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v28

    .line 5426
    .local v28, longvalue:Ljava/lang/Long;
    if-eqz v28, :cond_2

    .line 5427
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5433
    .end local v25           #i$:Ljava/util/Iterator;
    .end local v28           #longvalue:Ljava/lang/Long;
    .end local v45           #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 5435
    .local v10, buffer:Ljava/lang/StringBuffer;
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .restart local v25       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .line 5436
    .local v20, groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    move-object/from16 v0, v20

    iget-object v3, v0, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    invoke-static {v3}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5437
    const-string v3, ","

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 5440
    .end local v20           #groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v40

    .line 5441
    .local v40, size:I
    if-ltz v40, :cond_5

    .line 5444
    add-int/lit8 v3, v40, -0x1

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 5446
    :cond_5
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 5447
    const/4 v3, 0x0

    const-string v4, "title IN ( "

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 5448
    const-string v3, ")"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5452
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 5453
    .local v13, contactDelta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "account_name"

    invoke-virtual {v13, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5454
    .local v11, contactAccountName:Ljava/lang/String;
    const-string v3, "account_type"

    invoke-virtual {v13, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 5456
    .local v12, contactAccountType:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_8

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5458
    .local v6, selection:Ljava/lang/String;
    :goto_3
    const/4 v9, 0x0

    .line 5461
    .local v9, account_equal:Ljava/lang/String;
    if-eqz v11, :cond_7

    if-nez v12, :cond_9

    .line 5462
    :cond_7
    const-string v9, "0"

    .line 5474
    :goto_4
    if-eqz v6, :cond_a

    .line 5475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  AND  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "deleted"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = 0  AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 5481
    :goto_5
    const-string v3, "EditContactActivity2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "selection:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5484
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 5485
    .local v16, existedSelectedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5487
    .local v17, existedSelectedGroupIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_id"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "title"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string v8, "group_is_read_only"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 5488
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_c

    .line 5489
    :goto_6
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5490
    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 5491
    .local v18, gid:J
    const/4 v3, 0x1

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 5494
    .local v42, title:Ljava/lang/String;
    new-instance v3, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5495
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 5456
    .end local v6           #selection:Ljava/lang/String;
    .end local v9           #account_equal:Ljava/lang/String;
    .end local v14           #cursor:Landroid/database/Cursor;
    .end local v16           #existedSelectedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .end local v17           #existedSelectedGroupIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v18           #gid:J
    .end local v42           #title:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 5464
    .restart local v6       #selection:Ljava/lang/String;
    .restart local v9       #account_equal:Ljava/lang/String;
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ( account_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v11}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   AND  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v12}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 5478
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id <  0  AND  deleted = 0  AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_5

    .line 5498
    .restart local v14       #cursor:Landroid/database/Cursor;
    .restart local v16       #existedSelectedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .restart local v17       #existedSelectedGroupIDs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_b
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 5501
    :cond_c
    const-string v3, "EditContactActivity2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existedSelectedGroupIDs:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5505
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getNewAddedGroup(I)Ljava/util/ArrayList;

    move-result-object v31

    .line 5506
    .local v31, newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 5507
    new-instance v32, Ljava/util/ArrayList;

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5508
    .local v32, newAddedGroupTitle:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5513
    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5515
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_d
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 5516
    .local v24, i:Ljava/lang/Long;
    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 5521
    move-object/from16 v0, v33

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 5524
    .end local v24           #i:Ljava/lang/Long;
    :cond_e
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_f
    :goto_8
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 5525
    .restart local v24       #i:Ljava/lang/Long;
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 5530
    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 5533
    .end local v24           #i:Ljava/lang/Long;
    :cond_10
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_11
    :goto_9
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 5534
    .restart local v45       #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "data1"

    move-object/from16 v0, v45

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v26

    .line 5535
    .local v26, integer:Ljava/lang/Long;
    if-eqz v26, :cond_11

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 5536
    invoke-virtual/range {v45 .. v45}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_9

    .line 5541
    .end local v26           #integer:Ljava/lang/Long;
    .end local v45           #valueEntry:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContactsSource(I)Lcom/android/htccontacts/model/AccountType;

    move-result-object v38

    .line 5542
    .local v38, selectedSource:Lcom/android/htccontacts/model/AccountType;
    if-eqz v38, :cond_0

    .line 5545
    const-string v3, "vnd.android.cursor.item/group_membership"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/htccontacts/model/DataKind;

    move-result-object v21

    .line 5546
    .local v21, groupKind:Lcom/android/htccontacts/model/DataKind;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_a
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 5547
    .restart local v24       #i:Ljava/lang/Long;
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 5548
    .local v34, newIdValue:J
    move-object/from16 v0, v41

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->insertChild(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/DataKind;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v44

    .line 5549
    .local v44, value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v3, "data1"

    move-object/from16 v0, v44

    move-wide/from16 v1, v34

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;J)V

    goto :goto_a

    .line 5553
    .end local v24           #i:Ljava/lang/Long;
    .end local v34           #newIdValue:J
    .end local v44           #value:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_13
    const-string v43, "Newly added ID: "

    .line 5554
    .local v43, tmp:Ljava/lang/String;
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 5555
    .restart local v24       #i:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto :goto_b

    .line 5557
    .end local v24           #i:Ljava/lang/Long;
    :cond_14
    const-string v3, "EditContactActivity2"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5558
    const-string v43, "Missing ID: "

    .line 5559
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_c
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Long;

    .line 5560
    .restart local v24       #i:Ljava/lang/Long;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    goto :goto_c

    .line 5562
    .end local v24           #i:Ljava/lang/Long;
    :cond_15
    const-string v3, "EditContactActivity2"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5565
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    .line 5567
    .local v27, isFovrite:Z
    if-eqz v39, :cond_16

    .line 5568
    const-string v3, "Favorite_8656150684447252476_6727701920173350445"

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v27

    .line 5572
    :cond_16
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    .line 5573
    .local v15, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v4, "starred"

    if-eqz v27, :cond_17

    const/4 v3, 0x1

    :goto_d
    invoke-virtual {v15, v4, v3}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    .line 5574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    move-object/from16 v0, v21

    move-object/from16 v1, v41

    invoke-virtual {v3, v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setGroupMemberState(Lcom/android/htccontacts/model/DataKind;Lcom/android/htccontacts/model/EntityDelta;)V

    goto/16 :goto_0

    .line 5573
    :cond_17
    const/4 v3, 0x0

    goto :goto_d
.end method

.method private handleMyContactResultFromAlbum(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 909
    if-nez p1, :cond_1

    .line 916
    :cond_0
    :goto_0
    return-void

    .line 910
    :cond_1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 911
    .local v0, photo:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    .line 912
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    iget-object v4, v4, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 914
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v1, v5, v5}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    goto :goto_0
.end method

.method private handleMyContactResultFromCamera(Landroid/content/Intent;)V
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 918
    if-nez p1, :cond_1

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 920
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v1, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    sget v2, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-static {v0, v1, v2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 921
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    .line 922
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v1, :cond_0

    .line 923
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    iget-object v4, v4, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 924
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v1, v5, v5}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    goto :goto_0
.end method

.method private handleRequestNameEditing(Landroid/content/Intent;)V
    .locals 17
    .parameter "data"

    .prologue
    .line 6449
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v13}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_8

    if-eqz p1, :cond_8

    .line 6451
    const-string v13, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 6452
    .local v7, names:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v13}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v6

    .line 6453
    .local v6, nSize:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 6454
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v13, v4}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta;

    .line 6455
    .local v3, entity:Lcom/android/htccontacts/model/EntityDelta;
    const-string v13, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v13}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    .line 6456
    .local v8, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v8, :cond_2

    .line 6457
    const-string v13, "data1"

    const-string v14, "data1"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6458
    const-string v13, "data4"

    const-string v14, "data4"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6459
    const-string v13, "data6"

    const-string v14, "data6"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6460
    const-string v13, "data2"

    const-string v14, "data2"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6461
    const-string v13, "data5"

    const-string v14, "data5"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6462
    const-string v13, "data3"

    const-string v14, "data3"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6463
    const-string v13, "data7"

    const-string v14, "data7"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6464
    const-string v13, "data8"

    const-string v14, "data8"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6465
    const-string v13, "data9"

    const-string v14, "data9"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6466
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v13}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_1

    .line 6467
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v13, v7}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setNameDataByContentValues(Landroid/content/ContentValues;)V

    .line 6468
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v13}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->updateNameUI()V

    .line 6453
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 6469
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_0

    .line 6470
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->getJoinNamesDisplayName(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {v13 .. v16}, Lcom/android/htccontacts/link/MergeContact;->updateName(Ljava/lang/String;J)V

    goto :goto_1

    .line 6473
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v11

    .line 6474
    .local v11, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v12

    .line 6476
    .local v12, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v13, "account_type"

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6477
    .local v1, accountType:Ljava/lang/String;
    const-string v13, "data_set"

    invoke-virtual {v12, v13}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6478
    .local v2, dataSet:Ljava/lang/String;
    invoke-virtual {v11, v1, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v10

    .line 6479
    .local v10, source:Lcom/android/htccontacts/model/AccountType;
    const-string v13, "vnd.android.cursor.item/name"

    invoke-static {v3, v10, v13}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 6480
    const-string v13, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v13}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    .line 6481
    if-eqz v8, :cond_0

    .line 6482
    const-string v13, "data1"

    const-string v14, "data1"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6483
    const-string v13, "data4"

    const-string v14, "data4"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6484
    const-string v13, "data6"

    const-string v14, "data6"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6485
    const-string v13, "data2"

    const-string v14, "data2"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6486
    const-string v13, "data5"

    const-string v14, "data5"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6487
    const-string v13, "data3"

    const-string v14, "data3"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6488
    const-string v13, "data7"

    const-string v14, "data7"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6489
    const-string v13, "data8"

    const-string v14, "data8"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6490
    const-string v13, "data9"

    const-string v14, "data9"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v13}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v13

    if-nez v13, :cond_3

    .line 6492
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v13, v7}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setNameDataByContentValues(Landroid/content/ContentValues;)V

    .line 6493
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v13}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->updateNameUI()V

    goto/16 :goto_1

    .line 6494
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-nez v13, :cond_0

    .line 6495
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->getJoinNamesDisplayName(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    invoke-virtual/range {v13 .. v16}, Lcom/android/htccontacts/link/MergeContact;->updateName(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 6501
    .end local v1           #accountType:Ljava/lang/String;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v3           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v8           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v10           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v11           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v12           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v13, v13, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 6502
    .local v9, size:I
    :goto_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_7

    .line 6503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v13, v13, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_5

    .line 6504
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v13, v13, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactName:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 6506
    .local v5, m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v13, "display_name"

    const-string v14, "data1"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6507
    const-string v13, "prefix_name"

    const-string v14, "data4"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6508
    const-string v13, "suffix_name"

    const-string v14, "data6"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6509
    const-string v13, "given_name"

    const-string v14, "data2"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6510
    const-string v13, "middle_name"

    const-string v14, "data5"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6511
    const-string v13, "family_name"

    const-string v14, "data3"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6512
    const-string v13, "phonetic_given_name"

    const-string v14, "data7"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6513
    const-string v13, "phonetic_middle_name"

    const-string v14, "data8"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6514
    const-string v13, "phonetic_family_name"

    const-string v14, "data9"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6502
    .end local v5           #m:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 6501
    .end local v9           #size:I
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 6517
    .restart local v9       #size:I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->updateNamePhoto()V

    .line 6519
    .end local v4           #i:I
    .end local v6           #nSize:I
    .end local v7           #names:Landroid/content/ContentValues;
    .end local v9           #size:I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->controlSaveButtonEnabled()V

    .line 6521
    return-void
.end method

.method private handleResultFromAlbum(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    const/4 v2, 0x1

    .line 759
    if-nez p1, :cond_1

    .line 771
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 761
    .local v0, photo:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-lt v2, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v1, v1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 763
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setNewPhoto(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 764
    :cond_4
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private handleResultFromCamera(Landroid/content/Intent;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 6551
    if-nez p1, :cond_0

    .line 6561
    :goto_0
    return-void

    .line 6553
    :cond_0
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 6554
    .local v0, bitmap:Landroid/graphics/Bitmap;
    sget v1, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_WIDTH:I

    sget v2, Lcom/android/htccontacts/util/Constants;->CONTACT_PHOTO_HEIGHT:I

    invoke-static {v0, v1, v2}, Landroid/provider/HtcUnionContact$ContactUtils;->getScaledCenterCropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 6556
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 6557
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v1, v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 6559
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setNewPhoto(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private handleSelectPhoto(II)V
    .locals 2
    .parameter "type"
    .parameter "index"

    .prologue
    .line 869
    packed-switch p1, :pswitch_data_0

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 871
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoAction()Z

    goto :goto_0

    .line 874
    :pswitch_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoCamera()V

    goto :goto_0

    .line 877
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->selectPhoto(I)V

    goto :goto_0

    .line 880
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->selectSocialnetworkPhoto(I)V

    goto :goto_0

    .line 883
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->selectRawContactPhoto(I)V

    goto :goto_0

    .line 886
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    if-eqz v0, :cond_2

    .line 887
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->removeMyContactPhoto()V

    goto :goto_0

    .line 889
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->removePhoto()V

    goto :goto_0

    .line 893
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->selectMyContactPhoto(I)V

    goto :goto_0

    .line 897
    :pswitch_7
    const/4 v0, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 899
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoSnapbooth()V

    goto :goto_0

    .line 904
    :pswitch_8
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->selectMyContactGooglePlusPhoto()V

    goto :goto_0

    .line 869
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private hasPhoneOrMail(Lcom/android/htccontacts/model/EntityDelta;)Z
    .locals 5
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5600
    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v4, v2}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v4

    if-lez v4, :cond_2

    move v1, v2

    .line 5601
    .local v1, hasPhone:Z
    :goto_0
    const-string v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p1, v4, v2}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v4

    if-lez v4, :cond_3

    move v0, v2

    .line 5602
    .local v0, hasMail:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    move v3, v2

    :cond_1
    return v3

    .end local v0           #hasMail:Z
    .end local v1           #hasPhone:Z
    :cond_2
    move v1, v3

    .line 5600
    goto :goto_0

    .restart local v1       #hasPhone:Z
    :cond_3
    move v0, v3

    .line 5601
    goto :goto_1
.end method

.method private hideSoftInput()V
    .locals 4

    .prologue
    .line 6431
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 6432
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 6433
    iget-object v2, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 6434
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6435
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6438
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private initEditorMonitor(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V
    .locals 3
    .parameter "editor"

    .prologue
    .line 6720
    invoke-virtual {p1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->resetMonitors()V

    .line 6721
    const-string v0, "com.anddroid.contacts.sim"

    const-string v1, "vnd.android.cursor.item/phone_v2"

    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$PhoneEditTextWatchMonitor;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$PhoneEditTextWatchMonitor;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->insertMonitor(Ljava/lang/String;Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;)V

    .line 6724
    const-string v0, "com.htc.android.mail.eas"

    const-string v1, "vnd.android.cursor.item/organization"

    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$CompanyEditTextWatchMonitor;

    invoke-direct {v2, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$CompanyEditTextWatchMonitor;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->insertMonitor(Ljava/lang/String;Ljava/lang/String;Lcom/android/htccontacts/ui/widget/EditorMonitor;)V

    .line 6726
    return-void
.end method

.method protected static insertOrUpdateSIMContacts(Landroid/content/ContentResolver;Lcom/android/htccontacts/model/EntityDelta;)Landroid/net/Uri;
    .locals 30
    .parameter "resolver"
    .parameter "state"

    .prologue
    .line 3192
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v27

    .line 3193
    .local v27, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v28, "account_type"

    invoke-virtual/range {v27 .. v28}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3194
    .local v5, accountType:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v28, "com.anddroid.contacts.sim"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 3195
    :cond_0
    const/16 v23, 0x0

    .line 3283
    :cond_1
    :goto_0
    return-object v23

    .line 3198
    :cond_2
    const-string v28, "sourceid"

    invoke-virtual/range {v27 .. v28}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3199
    .local v26, sourceId:Ljava/lang/String;
    if-nez v26, :cond_6

    const/4 v14, 0x1

    .line 3201
    .local v14, isInsrt:Z
    :goto_1
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .line 3203
    .local v25, simvalues:Landroid/content/ContentValues;
    if-eqz v26, :cond_3

    .line 3204
    const-string v28, "recordNumber"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    :cond_3
    const-string v28, "name"

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const-string v28, "number"

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    const-string v28, "number1"

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const-string v28, "number2"

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const-string v28, "emails"

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    const-string v28, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    .line 3214
    .local v22, phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v13, 0x0

    .line 3215
    .local v13, index:I
    if-eqz v22, :cond_7

    .line 3216
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 3217
    .local v8, delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v28

    if-eqz v28, :cond_4

    .line 3220
    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 3221
    .local v21, number:Ljava/lang/String;
    const-string v15, "number"

    .line 3222
    .local v15, keyName:Ljava/lang/String;
    const/16 v28, 0x1

    move/from16 v0, v28

    if-lt v13, v0, :cond_5

    .line 3223
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 3225
    :cond_5
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v15, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3226
    add-int/lit8 v13, v13, 0x1

    .line 3227
    goto :goto_2

    .line 3199
    .end local v8           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #index:I
    .end local v14           #isInsrt:Z
    .end local v15           #keyName:Ljava/lang/String;
    .end local v21           #number:Ljava/lang/String;
    .end local v22           #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v25           #simvalues:Landroid/content/ContentValues;
    :cond_6
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 3230
    .restart local v13       #index:I
    .restart local v14       #isInsrt:Z
    .restart local v22       #phoneList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v25       #simvalues:Landroid/content/ContentValues;
    :cond_7
    const-string v28, "display_name"

    invoke-virtual/range {v27 .. v28}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3231
    .local v18, name:Ljava/lang/String;
    const-string v28, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 3232
    .local v19, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v13, 0x0

    .line 3234
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-lez v28, :cond_9

    .line 3235
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 3236
    .restart local v8       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v28

    if-eqz v28, :cond_8

    .line 3239
    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3240
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v28

    if-eqz v28, :cond_8

    .line 3241
    const-string v28, "data2"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3242
    .local v11, gname:Ljava/lang/String;
    const-string v28, "data3"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3243
    .local v10, fname:Ljava/lang/String;
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-static {v11, v10, v0}, Lcom/android/htccontacts/util/ContactsUtils;->conjectFirstLastName(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    goto :goto_3

    .line 3248
    .end local v8           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v10           #fname:Ljava/lang/String;
    .end local v11           #gname:Ljava/lang/String;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_9
    if-nez v18, :cond_a

    const-string v18, ""

    .line 3249
    :cond_a
    const-string v28, "name"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3251
    const-string v28, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 3252
    .local v16, mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v16, :cond_c

    .line 3253
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .restart local v12       #i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 3254
    .restart local v8       #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v8}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v28

    if-eqz v28, :cond_b

    .line 3257
    const-string v28, "data1"

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3258
    .local v7, data:Ljava/lang/String;
    const-string v28, "emails"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3263
    .end local v7           #data:Ljava/lang/String;
    .end local v8           #delta:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v12           #i$:Ljava/util/Iterator;
    :cond_c
    const-string v28, "content://icc/phonebook"

    invoke-static/range {v28 .. v28}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 3264
    .local v24, simUri:Landroid/net/Uri;
    const/16 v23, 0x0

    .line 3265
    .local v23, result:Landroid/net/Uri;
    if-eqz v14, :cond_d

    .line 3266
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v23

    goto/16 :goto_0

    .line 3269
    :cond_d
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v24

    .line 3271
    const/16 v28, 0x0

    const/16 v29, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v28

    move-object/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 3272
    .local v6, counts:I
    if-lez v6, :cond_e

    move-object/from16 v23, v24

    :goto_4
    goto/16 :goto_0

    :cond_e
    const/16 v23, 0x0

    goto :goto_4

    .line 3273
    .end local v6           #counts:I
    :catch_0
    move-exception v20

    .line 3274
    .local v20, npe:Ljava/lang/NullPointerException;
    const-string v28, "EditContactActivity2"

    const-string v29, "insertOrUpdateSIMContacts"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3275
    .end local v20           #npe:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v9

    .line 3276
    .local v9, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v9}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v17

    .line 3277
    .local v17, msg:Ljava/lang/String;
    const-string v28, "MemoryFull"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_f

    const-string v28, "AdnFull"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_f

    const-string v28, "Error"

    move-object/from16 v0, v17

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_1

    .line 3279
    :cond_f
    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    goto/16 :goto_0
.end method

.method private insertSelfToNewAddedGroups(J)V
    .locals 14
    .parameter "newAddedRawContactId"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 663
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v11

    .line 664
    .local v11, nNonSnsize:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v11, :cond_5

    .line 665
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v0, v9}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta;

    .line 666
    .local v7, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 667
    .local v13, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v0, "account_name"

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, contactAccountName:Ljava/lang/String;
    const-string v0, "account_type"

    invoke-virtual {v13, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 669
    .local v4, contactAccountType:Ljava/lang/String;
    move-wide v1, p1

    .line 670
    .local v1, lRawContactId:J
    invoke-virtual {v13}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->beforeExists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    invoke-virtual {v13}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 673
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v0, v5, v1

    if-lez v0, :cond_2

    .line 664
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 676
    :cond_2
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 677
    .local v12, titleSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_3

    .line 678
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 680
    :cond_3
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    .line 681
    .local v8, groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    const-string v0, "Favorite_8656150684447252476_6727701920173350445"

    iget-object v5, v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 682
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    iget-object v5, v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupTitle:Ljava/lang/String;

    iget v6, v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;->GroupIsReadOnly:I

    invoke-static/range {v0 .. v6}, Lcom/android/htccontacts/group/GroupEntity;->insertNewGroupForARawContact(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_1

    .line 688
    .end local v1           #lRawContactId:J
    .end local v3           #contactAccountName:Ljava/lang/String;
    .end local v4           #contactAccountType:Ljava/lang/String;
    .end local v7           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v8           #groupItem:Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;
    .end local v9           #i:I
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #nNonSnsize:I
    .end local v12           #titleSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    .end local v13           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_5
    return-void
.end method

.method private static isAcceptExtraData(Landroid/content/Context;Lcom/android/htccontacts/model/AccountWithDataSet;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "context"
    .parameter "accountWithDataSet"
    .parameter "extras"

    .prologue
    .line 7354
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 7355
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {p1}, Lcom/android/htccontacts/model/AccountWithDataSet;->getAccountTypeWithDataSet()Lcom/android/htccontacts/model/AccountTypeWithDataSet;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    .line 7356
    .local v0, simAccountType:Lcom/android/htccontacts/model/AccountType;
    invoke-static {p0, v0, p2}, Lcom/android/htccontacts/model/EntityModifier;->acceptExtras(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Landroid/os/Bundle;)Z

    move-result v2

    return v2
.end method

.method private isPhotoEditable()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 6614
    const/4 v1, 0x0

    .line 6615
    .local v1, entity:Lcom/android/htccontacts/model/EntityDelta;
    if-nez v1, :cond_1

    .line 6624
    :cond_0
    :goto_0
    return v2

    .line 6618
    :cond_1
    throw v1

    move-result-object v3

    const-string v4, "account_type"

    throw v3

    move-result-object v0

    .line 6620
    .local v0, accountType:Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v3, "com.anddroid.contacts.sim"

    throw v0

    move-result v3

    if-eqz v3, :cond_0

    .line 6621
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSocialnetworkLogin()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 648
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 659
    :cond_0
    :goto_0
    return v3

    .line 649
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v2

    .line 650
    .local v2, nSize:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 651
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v4, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 652
    .local v0, entity:Lcom/android/htccontacts/model/EntityDelta;
    const-string v4, "com.htc.socialnetwork.facebook/login"

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.htc.htctwitter/login"

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.htc.socialnetwork.plurk/login"

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.facebook.auth.login/login"

    invoke-virtual {v0, v4}, Lcom/android/htccontacts/model/EntityDelta;->hasMimeEntries(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 656
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 650
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private launchExchangeNameEditor()V
    .locals 8

    .prologue
    .line 6387
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v5

    .line 6388
    .local v5, size:I
    const/4 v0, 0x0

    .line 6389
    .local v0, accountType:Ljava/lang/String;
    const/4 v6, 0x1

    if-ne v6, v5, :cond_2

    .line 6390
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/model/EntityDelta;

    .line 6391
    .local v1, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v6

    const-string v7, "account_type"

    invoke-virtual {v6, v7}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6393
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-nez v6, :cond_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 6394
    :cond_1
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 6395
    .local v4, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const-class v7, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6396
    const-string v6, "account_type"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6398
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isDispalyNameChanged()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6399
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getNewDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 6400
    .local v2, displayName:Ljava/lang/String;
    const-string v6, "data1"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6401
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getNameDataContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 6402
    .local v3, fullName:Landroid/content/ContentValues;
    const-string v6, "data7"

    const-string v7, "data7"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6403
    const-string v6, "data9"

    const-string v7, "data9"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6404
    const-string v6, "data8"

    const-string v7, "data8"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6405
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V

    .line 6420
    .end local v1           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v2           #displayName:Ljava/lang/String;
    .end local v3           #fullName:Landroid/content/ContentValues;
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    .line 6407
    .restart local v1       #delta:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getNameDataContentValues()Landroid/content/ContentValues;

    move-result-object v3

    .line 6408
    .restart local v3       #fullName:Landroid/content/ContentValues;
    const-string v6, "data2"

    const-string v7, "data2"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6409
    const-string v6, "data3"

    const-string v7, "data3"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6410
    const-string v6, "data5"

    const-string v7, "data5"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6411
    const-string v6, "data4"

    const-string v7, "data4"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6412
    const-string v6, "data6"

    const-string v7, "data6"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6413
    const-string v6, "data7"

    const-string v7, "data7"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6414
    const-string v6, "data9"

    const-string v7, "data9"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6415
    const-string v6, "data8"

    const-string v7, "data8"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6416
    invoke-direct {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->startEditStructuredNameActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private pickPhoto()V
    .locals 28

    .prologue
    .line 5645
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5648
    .local v17, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v27, 0x7f0a01ef

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 5649
    .local v12, facebookTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbFacebookLogin:Z

    if-eqz v3, :cond_0

    .line 5650
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5656
    :cond_0
    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.HTCAlbum.action.ITEM_PICKER_FROM_COLLECTIONS"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5657
    .local v16, intent:Landroid/content/Intent;
    const-string v3, "image/*"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/htccontacts/util/ContactsUtils;->obtainActivityTitleRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v13

    .line 5661
    .local v13, galleryBundle:Landroid/os/Bundle;
    new-instance v16, Landroid/content/Intent;

    .end local v16           #intent:Landroid/content/Intent;
    const-string v3, "android.media.action.IMAGE_CAPTURE"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5662
    .restart local v16       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v3, v0}, Lcom/android/htccontacts/util/ContactsUtils;->obtainActivityTitleRes(Landroid/content/Context;Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v10

    .line 5672
    .local v10, cameraBundle:Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 5673
    .local v14, galleryTitle:Ljava/lang/String;
    if-eqz v13, :cond_1

    const-string v3, "labelRes"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5674
    const-string v3, "labelRes"

    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 5676
    :cond_1
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5677
    const v3, 0x7f0a00da

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 5679
    :cond_2
    const/4 v11, 0x0

    .line 5680
    .local v11, cameraTitle:Ljava/lang/String;
    if-eqz v10, :cond_3

    const-string v3, "labelRes"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5681
    const-string v3, "labelRes"

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5683
    :cond_3
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5684
    const v3, 0x7f0a012b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 5687
    :cond_4
    const/16 v26, 0x0

    .line 5688
    .local v26, snapboothTitle:Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v27

    move/from16 v0, v27

    if-ne v3, v0, :cond_5

    .line 5693
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5694
    const v3, 0x7f0a012c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 5699
    :cond_5
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5700
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5702
    const/4 v3, 0x1

    invoke-static {}, Lcom/htc/util/contacts/BuildUtils;->isTablet()Z

    move-result v27

    move/from16 v0, v27

    if-ne v3, v0, :cond_6

    .line 5703
    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 5704
    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5709
    :cond_6
    const v3, 0x7f0a012d

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 5710
    .local v23, removePhoto:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v3}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->hasSetPhoto()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5711
    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5713
    :cond_7
    const/16 v20, -0x1

    .line 5714
    .local v20, nFacebookMe:I
    const/16 v18, -0x1

    .line 5715
    .local v18, nAlbum:I
    const/16 v19, -0x1

    .line 5716
    .local v19, nCamera:I
    const/16 v21, -0x1

    .line 5717
    .local v21, nRemove:I
    const/16 v22, -0x1

    .line 5718
    .local v22, nSnapbooth:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_d

    .line 5720
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 5721
    .local v24, s:Ljava/lang/String;
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 5722
    move/from16 v20, v15

    .line 5718
    :cond_8
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 5723
    :cond_9
    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5724
    move/from16 v18, v15

    goto :goto_1

    .line 5725
    :cond_a
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 5726
    move/from16 v19, v15

    goto :goto_1

    .line 5727
    :cond_b
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 5728
    move/from16 v21, v15

    goto :goto_1

    .line 5730
    :cond_c
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5731
    move/from16 v22, v15

    goto :goto_1

    .line 5735
    .end local v24           #s:Ljava/lang/String;
    :cond_d
    move/from16 v4, v20

    .line 5736
    .local v4, PHOTO_FACEBOOK_ME:I
    move/from16 v5, v18

    .line 5737
    .local v5, PHOTO_ALBUM:I
    move/from16 v6, v19

    .line 5738
    .local v6, PHOTO_CAMERA:I
    move/from16 v7, v21

    .line 5739
    .local v7, REMOVE_PHOTO:I
    move/from16 v8, v22

    .line 5740
    .local v8, PHOTO_SNAPBOOTH:I
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v27, 0x7f0a012a

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    .line 5741
    .local v9, adbPhoto:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v25, v0

    .line 5742
    .local v25, sarrItem:[Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5743
    new-instance v2, Lcom/android/htccontacts/ui/EditContactActivity2$16;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/htccontacts/ui/EditContactActivity2$16;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;IIIII)V

    .line 5764
    .local v2, clPickPhoto:Landroid/content/DialogInterface$OnClickListener;
    move-object/from16 v0, v25

    invoke-virtual {v9, v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 5766
    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/htccontacts/ui/EditContactActivity2;->showAndManageDialog(Landroid/app/Dialog;)V

    .line 5767
    return-void
.end method

.method private static pickRequestOpenAccountListWithType(Ljava/util/ArrayList;Ljava/lang/String;Lcom/android/htccontacts/model/AccountTypeWithDataSet;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter "accountName"
    .parameter "accountType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/android/htccontacts/model/AccountTypeWithDataSet;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/model/AccountWithDataSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7217
    .local p0, accounts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7218
    .local v1, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/AccountWithDataSet;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/AccountWithDataSet;

    .line 7219
    .local v0, account:Lcom/android/htccontacts/model/AccountWithDataSet;
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 7220
    .local v4, type:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/htccontacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    .line 7221
    .local v2, dataSet:Ljava/lang/String;
    if-eqz v4, :cond_0

    iget-object v5, p2, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->accountType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/htccontacts/model/AccountTypeWithDataSet;->dataSet:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/htccontacts/util/ContactsUtils;->CompareDataSet(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7223
    if-eqz p1, :cond_1

    .line 7224
    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7225
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7229
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7233
    .end local v0           #account:Lcom/android/htccontacts/model/AccountWithDataSet;
    .end local v2           #dataSet:Ljava/lang/String;
    .end local v4           #type:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method private popupConfirmCancelDialog()V
    .locals 4

    .prologue
    .line 3935
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3936
    .local v0, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0a03ba

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 3937
    const v2, 0x7f0a0160

    new-instance v3, Lcom/android/htccontacts/ui/EditContactActivity2$13;

    invoke-direct {v3, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$13;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 3944
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    .line 3948
    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v1

    .line 3949
    .local v1, dialog:Landroid/app/Dialog;
    invoke-virtual {p0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->manageDialog(Landroid/app/Dialog;)V

    .line 3950
    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 3951
    return-void
.end method

.method private prepareDownloadFacdbookMePhotoDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 7
    .parameter "dialog"
    .parameter "b"

    .prologue
    .line 5873
    instance-of v5, p1, Lcom/htc/widget/HtcAlertDialog;

    if-eqz v5, :cond_0

    move-object v0, p1

    .line 5874
    check-cast v0, Lcom/htc/widget/HtcAlertDialog;

    .line 5875
    .local v0, alertdialogDownload:Lcom/htc/widget/HtcAlertDialog;
    if-nez v0, :cond_1

    .line 5898
    .end local v0           #alertdialogDownload:Lcom/htc/widget/HtcAlertDialog;
    :cond_0
    :goto_0
    return-void

    .line 5876
    .restart local v0       #alertdialogDownload:Lcom/htc/widget/HtcAlertDialog;
    :cond_1
    const v5, 0x7f070081

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 5877
    .local v3, progressBar:Landroid/widget/ProgressBar;
    if-eqz v3, :cond_2

    .line 5878
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5880
    :cond_2
    const v5, 0x7f070065

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 5881
    .local v2, photo:Landroid/widget/ImageView;
    if-eqz v2, :cond_3

    .line 5882
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 5884
    :cond_3
    const/4 v5, -0x2

    invoke-virtual {v0, v5}, Lcom/htc/widget/HtcAlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5886
    const/16 v1, 0x1f4

    .line 5887
    .local v1, nDismissDelay:I
    new-instance v4, Lcom/android/htccontacts/ui/EditContactActivity2$18;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$18;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/os/Bundle;Landroid/app/Dialog;)V

    .line 5896
    .local v4, r:Ljava/lang/Runnable;
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private removeMyContactPhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 928
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    .line 929
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v0, :cond_0

    .line 930
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    const-wide/16 v1, 0x0

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 931
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0, v4, v4}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 933
    :cond_0
    return-void
.end method

.method private removePhoto()V
    .locals 21

    .prologue
    .line 1082
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1083
    .local v13, removePhotoIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v11

    .line 1085
    .local v11, nNonSnsize:I
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v16

    .line 1086
    .local v16, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v11, :cond_2

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    .line 1088
    .local v5, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v17

    .line 1090
    .local v17, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v18, "account_type"

    invoke-virtual/range {v17 .. v18}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1091
    .local v2, accountType:Ljava/lang/String;
    const-string v18, "data_set"

    invoke-virtual/range {v17 .. v18}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1092
    .local v4, dataSet:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v15

    .line 1095
    .local v15, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v15}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/DataKind;

    .line 1096
    .local v8, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v3, v8, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1097
    .local v3, dataMimeType:Ljava/lang/String;
    const-string v18, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1098
    invoke-virtual {v5, v3}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v12

    .line 1099
    .local v12, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v12, :cond_0

    .line 1100
    const-string v18, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1101
    .local v9, lPhotoId:J
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    const-string v19, "data15"

    const/16 v18, 0x0

    check-cast v18, [B

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 1086
    .end local v3           #dataMimeType:Ljava/lang/String;
    .end local v8           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v9           #lPhotoId:J
    .end local v12           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1108
    .end local v2           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #nNonSnsize:I
    .end local v15           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v16           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v17           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhotoNull(Ljava/util/ArrayList;)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 1113
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v18, v0

    if-eqz v18, :cond_5

    .line 1114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1115
    .local v14, size:I
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_2
    if-ge v6, v14, :cond_5

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-nez v18, :cond_4

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1115
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1121
    .end local v6           #i:I
    .end local v14           #size:I
    :cond_5
    return-void
.end method

.method private resetAllFlagAndAttribute()V
    .locals 1

    .prologue
    .line 6791
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->bCompanyChanged:Z

    .line 6792
    return-void
.end method

.method private restoreEntity()V
    .locals 24

    .prologue
    .line 2609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v19

    .line 2611
    .local v19, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_2

    .line 2612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v11

    .line 2613
    .local v11, nNonSnsize:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v11, :cond_2

    .line 2614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    .line 2615
    .local v5, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    .line 2617
    .local v20, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v22, "account_type"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2618
    .local v2, accountType:Ljava/lang/String;
    const-string v22, "data_set"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2619
    .local v4, dataSet:Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v18

    .line 2621
    .local v18, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/DataKind;

    .line 2622
    .local v10, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v3, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 2623
    .local v3, dataMimeType:Ljava/lang/String;
    const-string v22, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_0

    .line 2624
    const-string v22, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v5, v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    goto :goto_1

    .line 2613
    .end local v3           #dataMimeType:Ljava/lang/String;
    .end local v10           #kind:Lcom/android/htccontacts/model/DataKind;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2634
    .end local v2           #accountType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #nNonSnsize:I
    .end local v18           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v20           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_6

    .line 2635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v12

    .line 2636
    .local v12, nSize:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    if-ge v8, v12, :cond_6

    .line 2637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    .line 2638
    .restart local v5       #entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    .line 2639
    .restart local v20       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v22, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 2641
    .local v15, rawContactId:J
    const-string v22, "vnd.android.cursor.item/note"

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    .line 2642
    .local v14, noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2643
    .local v6, htcHiddenNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v14, :cond_4

    .line 2644
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 2645
    .local v21, vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v22, "data1"

    invoke-virtual/range {v21 .. v22}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 2647
    .local v13, note:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2648
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 2649
    .local v17, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, v17

    invoke-static {v13, v0}, Lcom/android/htccontacts/util/SNUtils;->extractNoteText(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    .line 2650
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 2651
    invoke-virtual/range {v21 .. v21}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    .line 2652
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2653
    .local v7, htcHiddentagString:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_3

    .line 2655
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2660
    .end local v7           #htcHiddentagString:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v13           #note:Ljava/lang/String;
    .end local v17           #sb:Ljava/lang/StringBuilder;
    .end local v21           #vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_5

    .line 2661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mHiddenHtcNotes:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2636
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 2665
    .end local v5           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v6           #htcHiddenNoteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8           #i:I
    .end local v12           #nSize:I
    .end local v14           #noteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    .end local v15           #rawContactId:J
    .end local v20           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_6
    return-void
.end method

.method private selectMyContactGooglePlusPhoto()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 936
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v1, v1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto_Id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 937
    .local v0, photo:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v1, :cond_0

    .line 938
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->googlePlusRawContactPhoto_Id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 939
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v1, v4, v4}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 941
    :cond_0
    return-void
.end method

.method private selectMyContactPhoto(I)V
    .locals 25
    .parameter "index"

    .prologue
    .line 945
    const/16 v21, -0x1

    move/from16 v0, v21

    move/from16 v1, p1

    if-ne v0, v1, :cond_2

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 1002
    :cond_0
    :goto_0
    return-void

    .line 952
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 953
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditMyContactPhotoData:Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$EditMyContactPhotoData;->nonSocialnetworkPhoto:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    invoke-virtual/range {v21 .. v24}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    goto :goto_0

    .line 958
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_0

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v14

    .line 961
    .local v14, nSize:I
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v17

    .line 962
    .local v17, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v14, :cond_0

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/htccontacts/model/EntityDelta;

    .line 964
    .local v6, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v18

    .line 965
    .local v18, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual/range {v18 .. v18}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v21

    if-nez v21, :cond_4

    .line 962
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 966
    :cond_4
    const-string v21, "account_type"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 967
    .local v3, accountType:Ljava/lang/String;
    const-string v21, "data_set"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 969
    .local v5, dataSet:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v5}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v16

    .line 972
    .local v16, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual/range {v16 .. v16}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/model/DataKind;

    .line 973
    .local v9, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v4, v9, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 974
    .local v4, dataMimeType:Ljava/lang/String;
    const-string v21, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 975
    const-string v21, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-static {v6, v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 976
    invoke-virtual {v6, v4}, Lcom/android/htccontacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 978
    .local v19, valuesDeltaPhoto:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, p1

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 979
    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    .line 980
    .local v20, vd:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v21, "_id"

    invoke-virtual/range {v20 .. v21}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 981
    .local v10, lPhotoId:J
    const-string v21, "data7"

    invoke-virtual/range {v20 .. v21}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 982
    .local v2, LType:Ljava/lang/Long;
    if-eqz v2, :cond_5

    const-wide/16 v21, 0x0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    cmp-long v21, v21, v23

    if-eqz v21, :cond_5

    .line 985
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 986
    .local v12, lType:J
    const-wide/16 v21, 0x1

    cmp-long v21, v21, v12

    if-eqz v21, :cond_6

    const-wide/16 v21, 0x3

    cmp-long v21, v21, v12

    if-eqz v21, :cond_6

    const-wide/16 v21, 0x4

    cmp-long v21, v21, v12

    if-nez v21, :cond_5

    .line 989
    :cond_6
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-static {v10, v11, v0}, Lcom/htc/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 990
    .local v15, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v10, v11, v15}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    goto/16 :goto_2
.end method

.method private selectPhoto(I)V
    .locals 23
    .parameter "index"

    .prologue
    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_3

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v12

    .line 1007
    .local v12, nNonSnsize:I
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v17

    .line 1008
    .local v17, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move/from16 v0, p1

    if-ge v0, v12, :cond_3

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta;

    .line 1010
    .local v7, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v18

    .line 1012
    .local v18, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v19, "account_type"

    invoke-virtual/range {v18 .. v19}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1013
    .local v3, accountType:Ljava/lang/String;
    const-string v19, "data_set"

    invoke-virtual/range {v18 .. v19}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1014
    .local v6, dataSet:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v16

    .line 1017
    .local v16, source:Lcom/android/htccontacts/model/AccountType;
    const/4 v4, 0x0

    .line 1018
    .local v4, bHasPhotoMimeType:Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/htccontacts/model/DataKind;

    .line 1019
    .local v9, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v5, v9, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1020
    .local v5, dataMimeType:Ljava/lang/String;
    const-string v19, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1021
    invoke-virtual {v7, v5}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    .line 1022
    .local v15, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v15, :cond_0

    .line 1023
    const/4 v4, 0x1

    .line 1024
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1025
    .local v10, lPhotoId:J
    const-string v19, "data15"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v14

    .line 1026
    .local v14, photoBytes:[B
    const/4 v13, 0x0

    .line 1027
    .local v13, photo:Landroid/graphics/Bitmap;
    if-eqz v14, :cond_1

    .line 1028
    const/16 v19, 0x0

    array-length v0, v14

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v14, v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1030
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1031
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11, v13}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    goto :goto_0

    .line 1037
    .end local v5           #dataMimeType:Ljava/lang/String;
    .end local v9           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v10           #lPhotoId:J
    .end local v13           #photo:Landroid/graphics/Bitmap;
    .end local v14           #photoBytes:[B
    .end local v15           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_2
    if-nez v4, :cond_3

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v19, v0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 1045
    .end local v3           #accountType:Ljava/lang/String;
    .end local v4           #bHasPhotoMimeType:Z
    .end local v6           #dataSet:Ljava/lang/String;
    .end local v7           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #nNonSnsize:I
    .end local v16           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v17           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v18           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    return-void
.end method

.method private selectRawContactPhoto(I)V
    .locals 8
    .parameter "index"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v7, 0x1

    .line 1059
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v3, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1061
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1062
    .local v1, lPhotoId:J
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v4, v1, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 1063
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v3, v7, v7}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 1078
    .end local v1           #lPhotoId:J
    :cond_0
    :goto_1
    return-void

    :cond_1
    move-wide v1, v4

    .line 1061
    goto :goto_0

    .line 1065
    :cond_2
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1066
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 1067
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v3, v3, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1068
    .restart local v1       #lPhotoId:J
    :goto_2
    cmp-long v3, v4, v1

    if-gez v3, :cond_3

    .line 1069
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 1071
    :cond_3
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v3, v7, v7}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    goto :goto_1

    .end local v1           #lPhotoId:J
    :cond_4
    move-wide v1, v4

    .line 1067
    goto :goto_2

    .line 1073
    :cond_5
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 1074
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v3, v7, v7}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    goto :goto_1
.end method

.method private selectSocialnetworkPhoto(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 1048
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v2, :cond_0

    .line 1049
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v2, :cond_0

    .line 1050
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto_Id:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1051
    .local v0, lPhotoId:J
    :goto_0
    iget-object v3, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 1052
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v2, v4, v4}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 1055
    .end local v0           #lPhotoId:J
    :cond_0
    return-void

    .line 1050
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private setBackgroundDrawable()V
    .locals 2

    .prologue
    .line 503
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 504
    .local v0, backgroundColor:Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 506
    return-void
.end method

.method private setNewPhoto(Landroid/graphics/Bitmap;)V
    .locals 20
    .parameter "bitmap"

    .prologue
    .line 773
    if-nez p1, :cond_1

    .line 813
    :cond_0
    return-void

    .line 774
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_5

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v11

    .line 776
    .local v11, nNonSnsize:I
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v15

    .line 777
    .local v15, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v11, :cond_4

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/model/EntityDelta;

    .line 779
    .local v7, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v7}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v16

    .line 781
    .local v16, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v17, "account_type"

    invoke-virtual/range {v16 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 782
    .local v4, accountType:Ljava/lang/String;
    const-string v17, "data_set"

    invoke-virtual/range {v16 .. v17}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 784
    .local v6, dataSet:Ljava/lang/String;
    invoke-virtual {v15, v4, v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v14

    .line 787
    .local v14, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v14}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/DataKind;

    .line 788
    .local v10, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v5, v10, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 789
    .local v5, dataMimeType:Ljava/lang/String;
    const-string v17, "vnd.android.cursor.item/photo"

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 790
    invoke-virtual {v7, v5}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v12

    .line 791
    .local v12, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v12, :cond_2

    .line 792
    const-string v18, "data15"

    sget v17, Lcom/htc/util/contacts/PhotoUtils;->JPEG_QUALITY_50:I

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/contacts/PhotoUtils;->getBitmapByteArray(Landroid/graphics/Bitmap;I)[B

    move-result-object v17

    check-cast v17, [B

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;[B)V

    goto :goto_1

    .line 777
    .end local v5           #dataMimeType:Ljava/lang/String;
    .end local v10           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v12           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 799
    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #dataSet:Ljava/lang/String;
    .end local v7           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v14           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v16           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x0

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/htccontacts/link/MergeContact;->updateEditPhoto(JLandroid/graphics/Bitmap;)V

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 805
    .end local v8           #i:I
    .end local v11           #nNonSnsize:I
    .end local v15           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 807
    .local v13, size:I
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    if-ge v8, v13, :cond_0

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactReadOnlyAccountType:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_6

    .line 809
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContactPhoto:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-static/range {p1 .. p1}, Lcom/android/htccontacts/util/ContactsUtils;->getCenterCropThumbnailBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v8, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 807
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method private showAndManageDialog(Landroid/app/Dialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 2713
    if-nez p1, :cond_1

    .line 2719
    :cond_0
    :goto_0
    return-void

    .line 2714
    :cond_1
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mIsDestroyed:Z

    if-nez v0, :cond_0

    .line 2717
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->startManagingDialog(Landroid/app/Dialog;)V

    .line 2718
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showAndManageDialogDelayed(Landroid/app/Dialog;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 2722
    if-nez p1, :cond_0

    .line 2732
    :goto_0
    return-void

    .line 2723
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2;->startManagingDialog(Landroid/app/Dialog;)V

    .line 2724
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/htccontacts/ui/EditContactActivity2$12;

    invoke-direct {v1, p0, p1}, Lcom/android/htccontacts/ui/EditContactActivity2$12;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startEditStructuredNameActivity(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 6424
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 6425
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hideSoftInput()V

    .line 6426
    iget-object v0, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    const-class v1, Lcom/android/htccontacts/ui/EditStructuredNameActivity;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6427
    const v0, 0xf0005

    invoke-virtual {p0, p1, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->startActivityForResult(Landroid/content/Intent;I)V

    .line 6428
    return-void
.end method

.method private updateNamePhoto()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1493
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    invoke-virtual {v0, v1, v1}, Lcom/android/htccontacts/link/MergeContact;->updateUI(ZZ)V

    .line 1496
    :cond_0
    return-void
.end method


# virtual methods
.method addChangeAccountItemForInsertContact()V
    .locals 2

    .prologue
    .line 6538
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mChangeAccountItemListener:Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;

    if-nez v0, :cond_0

    .line 6539
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mChangeAccountItemListener:Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;

    .line 6541
    :cond_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mChangeAccountItemListener:Lcom/android/htccontacts/ui/EditContactActivity2$ChangeAccountItemListener;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->enableChangeAccountItem(Landroid/view/View$OnClickListener;)V

    .line 6542
    return-void
.end method

.method protected bindAddContactEditors()V
    .locals 3

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 745
    :cond_0
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v0

    .line 748
    .local v0, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 749
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupNewAddedGroup()V

    .line 750
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setAppendedNewGroupTitleLists(Ljava/util/ArrayList;)V

    .line 753
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-direct {p0, v1, v0}, Lcom/android/htccontacts/ui/EditContactActivity2;->assignEditorState(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 754
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setVisibility(I)V

    .line 755
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mGroupActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setGroupMemberAction(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected bindEditors()V
    .locals 6

    .prologue
    .line 7244
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->setContentView(Landroid/view/View;)V

    .line 7246
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v4

    if-nez v4, :cond_0

    .line 7269
    :goto_0
    return-void

    .line 7248
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 7250
    .local v1, inflater:Landroid/view/LayoutInflater;
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v2

    .line 7252
    .local v2, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    iget-boolean v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v4, :cond_1

    .line 7253
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v4}, Lcom/android/htccontacts/model/EntityDeltaList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/model/EntityDelta;

    .line 7255
    .local v3, state:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/htccontacts/model/EntityDelta;->setProfileQueryUri()V

    goto :goto_1

    .line 7259
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v3           #state:Lcom/android/htccontacts/model/EntityDelta;
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    invoke-direct {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->initEditorMonitor(Lcom/android/htccontacts/ui/widget/ContactEditorView2;)V

    .line 7261
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-static {v4, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7262
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setupNewAddedGroup()V

    .line 7263
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setAppendedNewGroupTitleLists(Ljava/util/ArrayList;)V

    .line 7264
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v4, v5, v2}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setState(Lcom/android/htccontacts/model/EntityDeltaList;Lcom/android/htccontacts/model/AccountTypeManager;)V

    .line 7265
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mGroupActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setGroupMemberAction(Landroid/view/View$OnClickListener;)V

    .line 7266
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setVisibility(I)V

    .line 7268
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->updateNamePhoto()V

    goto :goto_0
.end method

.method protected bindNamePhoto(Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;)V
    .locals 9
    .parameter "result"

    .prologue
    const-wide/16 v2, 0x0

    .line 1485
    iput-object p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    .line 1486
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v0, :cond_0

    .line 1487
    new-instance v0, Lcom/android/htccontacts/link/MergeContact;

    iget-wide v2, p1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactId:J

    iget-object v4, p1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->sContactName:Ljava/lang/String;

    iget-wide v5, p1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactNameId:J

    iget-wide v7, p1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactPhoto_id:J

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/htccontacts/link/MergeContact;-><init>(Landroid/content/Context;JLjava/lang/String;JJ)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    .line 1491
    :goto_0
    return-void

    .line 1489
    :cond_0
    new-instance v0, Lcom/android/htccontacts/link/MergeContact;

    const/4 v4, 0x0

    move-object v1, p0

    move-wide v5, v2

    move-wide v7, v2

    invoke-direct/range {v0 .. v8}, Lcom/android/htccontacts/link/MergeContact;-><init>(Landroid/content/Context;JLjava/lang/String;JJ)V

    iput-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    goto :goto_0
.end method

.method bindUpdateName()V
    .locals 20

    .prologue
    .line 1498
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbQueryNamePhotoTaskDone:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbQueryEntitiesTaskDone:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1501
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v14

    .line 1502
    .local v14, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v11

    .line 1503
    .local v11, nStateSize:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v11, :cond_3

    .line 1504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/htccontacts/model/EntityDelta;

    .line 1505
    .local v5, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    .line 1506
    .local v15, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v15}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1503
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1508
    :cond_1
    const-string v16, "_id"

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1509
    .local v9, lRawContactId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactNameId:J

    move-wide/from16 v16, v0

    cmp-long v16, v16, v9

    if-nez v16, :cond_0

    .line 1510
    const-string v16, "account_type"

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1511
    .local v2, accountType:Ljava/lang/String;
    const-string v16, "data_set"

    invoke-virtual/range {v15 .. v16}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1512
    .local v4, dataSet:Ljava/lang/String;
    invoke-virtual {v14, v2, v4}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v13

    .line 1517
    .local v13, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {v13}, Lcom/android/htccontacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/model/DataKind;

    .line 1518
    .local v8, kind:Lcom/android/htccontacts/model/DataKind;
    iget-object v3, v8, Lcom/android/htccontacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1519
    .local v3, dataMimeType:Ljava/lang/String;
    const-string v16, "vnd.android.cursor.item/name"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1520
    invoke-virtual {v5, v3}, Lcom/android/htccontacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v12

    .line 1521
    .local v12, primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    if-eqz v12, :cond_2

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/htccontacts/ui/EditContactActivity2;->getJoinNamesDisplayName(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->sContactName:Ljava/lang/String;

    goto :goto_1

    .line 1528
    .end local v2           #accountType:Ljava/lang/String;
    .end local v3           #dataMimeType:Ljava/lang/String;
    .end local v4           #dataSet:Ljava/lang/String;
    .end local v5           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #kind:Lcom/android/htccontacts/model/DataKind;
    .end local v9           #lRawContactId:J
    .end local v12           #primary:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    .end local v13           #source:Lcom/android/htccontacts/model/AccountType;
    .end local v15           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPeople:Lcom/android/htccontacts/link/MergeContact;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->sContactName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->lContactNameId:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v16 .. v19}, Lcom/android/htccontacts/link/MergeContact;->updateName(Ljava/lang/String;J)V

    .line 1530
    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->updateNamePhoto()V

    .line 1534
    .end local v6           #i:I
    .end local v11           #nStateSize:I
    .end local v14           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    :cond_4
    return-void
.end method

.method public compare(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;)I
    .locals 21
    .parameter "one"
    .parameter "two"

    .prologue
    .line 7276
    invoke-virtual/range {p1 .. p2}, Lcom/android/htccontacts/model/EntityDelta;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 7277
    const/16 v18, 0x0

    .line 7333
    :cond_0
    :goto_0
    return v18

    .line 7280
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v11

    .line 7281
    .local v11, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "account_type"

    invoke-virtual/range {v19 .. v20}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7282
    .local v2, accountType:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "data_set"

    invoke-virtual/range {v19 .. v20}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7284
    .local v3, dataSet:Ljava/lang/String;
    invoke-virtual {v11, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v8

    .line 7286
    .local v8, oneSource:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual/range {p2 .. p2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "account_type"

    invoke-virtual/range {v19 .. v20}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7287
    invoke-virtual/range {p2 .. p2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v19

    const-string v20, "data_set"

    invoke-virtual/range {v19 .. v20}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7288
    invoke-virtual {v11, v2, v3}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v16

    .line 7292
    .local v16, twoSource:Lcom/android/htccontacts/model/AccountType;
    iget-boolean v0, v8, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 7293
    const/16 v18, 0x1

    goto :goto_0

    .line 7294
    :cond_2
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    iget-boolean v0, v8, Lcom/android/htccontacts/model/AccountType;->readOnly:Z

    move/from16 v19, v0

    if-nez v19, :cond_3

    .line 7295
    const/16 v18, -0x1

    goto :goto_0

    .line 7299
    :cond_3
    const/4 v10, 0x0

    .line 7300
    .local v10, skipAccountTypeCheck:Z
    instance-of v7, v8, Lcom/android/htccontacts/model/GoogleAccountType;

    .line 7301
    .local v7, oneIsGoogle:Z
    move-object/from16 v0, v16

    instance-of v15, v0, Lcom/android/htccontacts/model/GoogleAccountType;

    .line 7302
    .local v15, twoIsGoogle:Z
    if-eqz v7, :cond_4

    if-nez v15, :cond_4

    .line 7303
    const/16 v18, -0x1

    goto :goto_0

    .line 7304
    :cond_4
    if-eqz v15, :cond_5

    if-nez v7, :cond_5

    .line 7305
    const/16 v18, 0x1

    goto :goto_0

    .line 7307
    :cond_5
    const/4 v10, 0x1

    .line 7311
    if-nez v10, :cond_6

    .line 7312
    iget-object v0, v8, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/htccontacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    .line 7313
    .local v18, value:I
    if-nez v18, :cond_0

    .line 7319
    .end local v18           #value:I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 7320
    .local v9, oneValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v19, "account_name"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 7321
    .local v4, oneAccount:Ljava/lang/String;
    if-nez v4, :cond_7

    const-string v4, ""

    .line 7322
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v17

    .line 7323
    .local v17, twoValues:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v19, "account_name"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 7324
    .local v12, twoAccount:Ljava/lang/String;
    if-nez v12, :cond_8

    const-string v12, ""

    .line 7325
    :cond_8
    invoke-virtual {v4, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    .line 7326
    .restart local v18       #value:I
    if-nez v18, :cond_0

    .line 7331
    const-string v19, "_id"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 7332
    .local v5, oneId:J
    const-string v19, "_id"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 7333
    .local v13, twoId:J
    sub-long v19, v5, v13

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v18, v0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 163
    check-cast p1, Lcom/android/htccontacts/model/EntityDelta;

    .end local p1
    check-cast p2, Lcom/android/htccontacts/model/EntityDelta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->compare(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/EntityDelta;)I

    move-result v0

    return v0
.end method

.method protected createGroupStructureList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5380
    .local p1, titleList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, groupIsReadOnlyList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5381
    .local v1, groupStructureList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    const/4 v2, 0x0

    .line 5382
    .local v2, groupTitleIndex:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5383
    .local v0, addTitle:Ljava/lang/String;
    new-instance v5, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v5, v0, v4}, Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5384
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5386
    .end local v0           #addTitle:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public doQueryNamePhotoTask()V
    .locals 4

    .prologue
    .line 609
    new-instance v0, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 610
    return-void
.end method

.method public doRemovePhotoAction()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 4010
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 4024
    :cond_0
    :goto_0
    return v0

    .line 4012
    :cond_1
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v1, v1, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 4015
    :cond_3
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 4016
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v1}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4020
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public fillDummyUI(Z)V
    .locals 7
    .parameter "bInsert"

    .prologue
    const/4 v6, 0x0

    .line 6573
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v3

    .line 6574
    .local v3, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 6575
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "account_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6576
    const-string v5, "account_type"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 6579
    new-instance v0, Lcom/android/htccontacts/model/EntityDelta;

    invoke-static {v4}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/android/htccontacts/model/EntityDelta;-><init>(Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;)V

    .line 6580
    .local v0, dummy:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v3, v6, v6}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v2

    .line 6583
    .local v2, source:Lcom/android/htccontacts/model/AccountType;
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 6584
    .local v1, extras:Landroid/os/Bundle;
    invoke-static {p0, v2, v0, v1}, Lcom/android/htccontacts/model/EntityModifier;->parseExtras(Landroid/content/Context;Lcom/android/htccontacts/model/AccountType;Lcom/android/htccontacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 6587
    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-static {v0, v2, v5}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 6588
    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-static {v0, v2, v5}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 6592
    const-string v5, "vnd.android.cursor.item/group_membership"

    invoke-static {v0, v2, v5}, Lcom/android/htccontacts/model/EntityModifier;->ensureKindExists(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;Ljava/lang/String;)V

    .line 6598
    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-nez v5, :cond_1

    .line 6599
    invoke-static {v0}, Lcom/android/htccontacts/model/EntityDeltaList;->fromSingle(Lcom/android/htccontacts/model/EntityDelta;)Lcom/android/htccontacts/model/EntityDeltaList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    .line 6604
    :goto_0
    if-eqz p1, :cond_0

    .line 6605
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->addChangeAccountItemForInsertContact()V

    .line 6609
    :cond_0
    return-void

    .line 6601
    :cond_1
    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v5}, Lcom/android/htccontacts/model/EntityDeltaList;->clear()V

    .line 6602
    iget-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v5, v0}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 7238
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7240
    return-void
.end method

.method public finishSelf()V
    .locals 4

    .prologue
    .line 6565
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hideSoftInput()V

    .line 6566
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mHandler:Landroid/os/Handler;

    const v1, 0xf00002

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6567
    return-void
.end method

.method protected getContactsSource(I)Lcom/android/htccontacts/model/AccountType;
    .locals 7
    .parameter "index"

    .prologue
    .line 707
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v6

    if-ge p1, v6, :cond_0

    .line 708
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v6, p1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta;

    .line 709
    .local v2, entity:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 710
    .local v5, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    .local v0, accountType:Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 712
    .local v1, dataSet:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v4

    .line 713
    .local v4, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {v4, v0, v1}, Lcom/android/htccontacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/htccontacts/model/AccountType;

    move-result-object v3

    .line 717
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #dataSet:Ljava/lang/String;
    .end local v2           #entity:Lcom/android/htccontacts/model/EntityDelta;
    .end local v4           #sources:Lcom/android/htccontacts/model/AccountTypeManager;
    .end local v5           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;
    .locals 2
    .parameter "index"

    .prologue
    .line 699
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 700
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v1, p1}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/model/EntityDelta;

    .line 703
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getNewAddedGroup(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;",
            ">;"
        }
    .end annotation

    .prologue
    .line 723
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 724
    .local v0, newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 727
    .restart local v0       #newAddedGroup:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/htccontacts/ui/widget/ContactEditorView2$GroupStructure;>;"
    :cond_0
    return-object v0
.end method

.method protected hasValidState()Z
    .locals 1

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v0}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isUIReady()Z
    .locals 1

    .prologue
    .line 2794
    const/4 v0, 0x1

    return v0
.end method

.method protected myPhonebookCancelSync()V
    .locals 1

    .prologue
    .line 292
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v0, :cond_0

    .line 295
    :try_start_0
    iget-object v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    invoke-interface {v0}, Lcom/android/syncml/service/ISyncMLService;->cancelSync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 17
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 3001
    sparse-switch p1, :sswitch_data_0

    .line 3098
    :cond_0
    :goto_0
    return-void

    .line 3003
    :sswitch_0
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 3007
    const-string v14, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    .line 3008
    .local v6, photo:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v14, v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setPhotoBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3012
    .end local v6           #photo:Landroid/graphics/Bitmap;
    :sswitch_1
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 3013
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v14, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    if-eqz v14, :cond_2

    .line 3014
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleMyContactResultFromAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 3016
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleResultFromAlbum(Landroid/content/Intent;)V

    goto :goto_0

    .line 3021
    :sswitch_2
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 3022
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    if-eqz v14, :cond_4

    .line 3023
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleMyContactResultFromCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 3025
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleResultFromCamera(Landroid/content/Intent;)V

    goto :goto_0

    .line 3030
    :sswitch_3
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 3031
    const v14, 0xf0001

    move/from16 v0, p1

    if-ne v14, v0, :cond_0

    .line 3032
    new-instance v12, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    .line 3033
    .local v12, task:Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;
    const/4 v14, 0x1

    new-array v14, v14, [Landroid/content/Intent;

    const/4 v15, 0x0

    aput-object p3, v14, v15

    invoke-virtual {v12, v14}, Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 3041
    .end local v12           #task:Lcom/android/htccontacts/ui/EditContactActivity2$ProcessGroupPickerResultTask;
    :sswitch_4
    const/4 v14, -0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_5

    .line 3042
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    goto/16 :goto_0

    .line 3045
    :cond_5
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 3046
    .local v9, raw_contact_uri:Landroid/net/Uri;
    if-nez v9, :cond_6

    .line 3047
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    goto/16 :goto_0

    .line 3050
    :cond_6
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    .line 3051
    .local v7, raw_contact_id:J
    const/4 v5, 0x0

    .line 3052
    .local v5, index:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v14}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v11

    .line 3053
    .local v11, size:I
    :goto_1
    if-ge v5, v11, :cond_7

    .line 3054
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v14, v5}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/htccontacts/model/EntityDelta;

    .line 3055
    .local v2, delta:Lcom/android/htccontacts/model/EntityDelta;
    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDelta;->getValues()Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;

    move-result-object v13

    .line 3056
    .local v13, values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v13}, Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;->getId()Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3058
    .local v3, id:J
    cmp-long v14, v3, v7

    if-nez v14, :cond_8

    .line 3063
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v3           #id:J
    .end local v13           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_7
    if-ge v5, v11, :cond_9

    .line 3064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v14, v5}, Lcom/android/htccontacts/model/EntityDeltaList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/htccontacts/model/EntityDelta;

    .line 3065
    .local v10, rawcontact:Lcom/android/htccontacts/model/EntityDelta;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v14}, Lcom/android/htccontacts/model/EntityDeltaList;->clear()V

    .line 3066
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v14, v10}, Lcom/android/htccontacts/model/EntityDeltaList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 3053
    .end local v10           #rawcontact:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v2       #delta:Lcom/android/htccontacts/model/EntityDelta;
    .restart local v3       #id:J
    .restart local v13       #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3070
    .end local v2           #delta:Lcom/android/htccontacts/model/EntityDelta;
    .end local v3           #id:J
    .end local v13           #values:Lcom/android/htccontacts/model/EntityDelta$ValuesDelta;
    :cond_9
    const-string v14, "EditContactActivity2"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "the result raw contact id "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not member"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    invoke-virtual/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finishSelf()V

    goto/16 :goto_0

    .line 3081
    .end local v5           #index:I
    .end local v7           #raw_contact_id:J
    .end local v9           #raw_contact_uri:Landroid/net/Uri;
    .end local v11           #size:I
    :sswitch_5
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    if-eqz p3, :cond_0

    .line 3082
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleRequestNameEditing(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3088
    :sswitch_6
    const/4 v14, -0x1

    move/from16 v0, p2

    if-ne v0, v14, :cond_0

    .line 3089
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v14, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v14

    if-nez v14, :cond_a

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    if-eqz v14, :cond_b

    .line 3090
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleMyContactResultFromCamera(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3092
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/htccontacts/ui/EditContactActivity2;->handleResultFromCamera(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3001
    :sswitch_data_0
    .sparse-switch
        0xbcd -> :sswitch_0
        0xf0001 -> :sswitch_3
        0xf0002 -> :sswitch_2
        0xf0003 -> :sswitch_1
        0xf0004 -> :sswitch_4
        0xf0005 -> :sswitch_5
        0xf0006 -> :sswitch_6
    .end sparse-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 2993
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->autoSave()V

    .line 2994
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2960
    instance-of v0, p1, Lcom/htc/widget/HeaderBarImage;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 2961
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    if-eqz v0, :cond_2

    .line 2962
    :cond_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->editMyContactPhoto()V

    .line 2988
    :goto_0
    return-void

    .line 2964
    :cond_2
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doEditPhoto()V

    goto :goto_0

    .line 2967
    :cond_3
    instance-of v0, p1, Lcom/htc/widget/HeaderBarDropDown;

    if-eqz v0, :cond_6

    .line 2968
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    if-eqz v0, :cond_5

    .line 2969
    :cond_4
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->editMyContactName()V

    goto :goto_0

    .line 2971
    :cond_5
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doEditName()V

    goto :goto_0

    .line 2976
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 2694
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2695
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onContentChanged()V

    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mContentViewIsReady:Z

    .line 499
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 331
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 334
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 335
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/android/syncml/service/ISyncMLService;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v8, v11, v9}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v6

    .line 337
    .local v6, result:Z
    const-string v8, "EditContactActivity2"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bind ISyncMLService result: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    if-nez v6, :cond_0

    .line 339
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->unbindService(Landroid/content/ServiceConnection;)V

    .line 340
    const-string v8, "EditContactActivity2"

    const-string v11, "unbindService..."

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v6           #result:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    .line 346
    .local v4, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 347
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 350
    .local v2, extras:Landroid/os/Bundle;
    const v8, 0x7f030018

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    .line 354
    sget-object v8, Lcom/android/htccontacts/ui/EditContactActivity2;->mAccountPrefs:Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    if-nez v8, :cond_4

    .line 355
    new-instance v8, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    iget-object v11, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-direct {v8, v11}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/android/htccontacts/ui/EditContactActivity2;->mAccountPrefs:Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    .line 367
    :goto_0
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    const v11, 0x7f070041

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    .line 368
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    const v11, 0x7f070016

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->linkTitle:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    .line 369
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->linkTitle:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    const/4 v11, 0x6

    invoke-virtual {v8, v11}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->buildHeaderBar(I)V

    .line 370
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->linkTitle:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v8}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderDropDown()Lcom/htc/widget/HeaderBarDropDown;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    .line 371
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HeaderBarDropDown;->setFocusable(Z)V

    .line 372
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbuttonName:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->linkTitle:Lcom/android/htccontacts/widget/title/DetailHeaderBar;

    invoke-virtual {v8}, Lcom/android/htccontacts/widget/title/DetailHeaderBar;->getHeaderImage()Lcom/htc/widget/HeaderBarImage;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mimageViewPhoto:Lcom/htc/widget/HeaderBarImage;

    .line 374
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mimageViewPhoto:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v8, v10}, Lcom/htc/widget/HeaderBarImage;->setFocusable(Z)V

    .line 376
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mimageViewPhoto:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v8, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    const v11, 0x7f070043

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    .line 381
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 382
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mEditor:Lcom/android/htccontacts/ui/widget/ContactEditorView2;

    invoke-virtual {v8, v10, v9}, Lcom/android/htccontacts/ui/widget/ContactEditorView2;->setRoundedCornerEnabled(ZZ)V

    .line 385
    :cond_1
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    const v11, 0x7f070040

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    .line 387
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    new-instance v11, Lcom/android/htccontacts/ui/EditContactActivity2$2;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$2;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {v8, v11}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setPhotoClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    new-instance v11, Lcom/android/htccontacts/ui/EditContactActivity2$3;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$3;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {v8, v11}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setButtonNameClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v8, v10}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setNameEditorFocusabe(Z)V

    .line 404
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    const v11, 0x7f070017

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 405
    .local v1, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v8

    iput-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 411
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    new-instance v11, Lcom/android/htccontacts/ui/EditContactActivity2$4;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$4;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    invoke-virtual {v1}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v8

    new-instance v11, Lcom/android/htccontacts/ui/EditContactActivity2$5;

    invoke-direct {v11, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$5;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 429
    if-eqz p1, :cond_5

    const-string v8, "state"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v3, v9

    .line 431
    .local v3, hasIncomingState:Z
    :goto_1
    iput-boolean v9, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mActivityActive:Z

    .line 433
    const-string v8, "android.intent.action.EDIT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v3, :cond_6

    .line 438
    new-instance v8, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    new-array v11, v9, [Landroid/content/Intent;

    aput-object v5, v11, v10

    invoke-virtual {v8, v11}, Lcom/android/htccontacts/ui/EditContactActivity2$QueryEntitiesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 465
    :goto_2
    if-eqz v5, :cond_2

    .line 466
    const-string v8, "facebook_login"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbFacebookLogin:Z

    .line 471
    :cond_2
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    const v11, 0x7f070042

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/htccontacts/widget/ScrollStatusScrollView;

    .line 472
    .local v7, scrollView:Lcom/android/htccontacts/widget/ScrollStatusScrollView;
    invoke-static {}, Lcom/htc/util/contacts/BuildUtils$Customization;->isLandscapeProject()Z

    move-result v8

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 473
    invoke-virtual {v7, v10, v9}, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->setRoundedCornerEnabled(ZZ)V

    .line 476
    :cond_3
    new-instance v8, Lcom/android/htccontacts/ui/EditContactActivity2$6;

    invoke-direct {v8, p0}, Lcom/android/htccontacts/ui/EditContactActivity2$6;-><init>(Lcom/android/htccontacts/ui/EditContactActivity2;)V

    invoke-virtual {v7, v8}, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->setOnScrollChangeListener(Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;)V

    .line 491
    .end local v7           #scrollView:Lcom/android/htccontacts/widget/ScrollStatusScrollView;
    :goto_3
    return-void

    .line 357
    .end local v1           #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    .end local v3           #hasIncomingState:Z
    :cond_4
    sget-object v8, Lcom/android/htccontacts/ui/EditContactActivity2;->mAccountPrefs:Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    iget-object v11, p0, Lcom/android/htccontacts/app/BaseActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->clear(Landroid/content/Context;)V

    goto/16 :goto_0

    .restart local v1       #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    :cond_5
    move v3, v10

    .line 429
    goto :goto_1

    .line 440
    .restart local v3       #hasIncomingState:Z
    :cond_6
    const-string v8, "android.intent.action.INSERT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-nez v3, :cond_8

    .line 442
    iget-boolean v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mContentViewIsReady:Z

    if-nez v8, :cond_7

    .line 443
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->setBackgroundDrawable()V

    .line 444
    iget-object v8, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mRootLayoutView:Landroid/view/View;

    invoke-virtual {p0, v8}, Lcom/android/htccontacts/ui/EditContactActivity2;->setContentView(Landroid/view/View;)V

    .line 447
    :cond_7
    invoke-virtual {p0, v9}, Lcom/android/htccontacts/ui/EditContactActivity2;->fillDummyUI(Z)V

    .line 450
    sget-object v8, Lcom/android/htccontacts/ui/EditContactActivity2;->mAccountPrefs:Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;

    iput-boolean v9, v8, Lcom/android/htccontacts/ui/EditContactActivity2$AccountPreferences;->isNewContact:Z

    .line 451
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doAddAction()Z

    goto :goto_2

    .line 455
    :cond_8
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->finish()V

    goto :goto_3
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1
    .parameter "id"
    .parameter "b"

    .prologue
    .line 5800
    packed-switch p1, :pswitch_data_0

    .line 5818
    invoke-super {p0, p1, p2}, Lcom/android/htccontacts/app/BaseActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 5802
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->createRemainTypesPickerDialog()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 5815
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/htccontacts/ui/EditContactActivity2;->createDownloadFacdbookMePhotoDialog(Landroid/os/Bundle;)Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    goto :goto_0

    .line 5800
    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 3105
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 3107
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 3108
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f0f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3109
    const/4 v1, 0x1

    return v1
.end method

.method public onDeleted(Lcom/android/htccontacts/model/Editor;)V
    .locals 0
    .parameter "editor"

    .prologue
    .line 4030
    return-void
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2670
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onDestroy()V

    .line 2672
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mManagedDialogWeakRefs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 2673
    .local v2, ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    .line 2674
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2675
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 2679
    .end local v0           #dialog:Landroid/app/Dialog;
    .end local v2           #ref:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    if-eqz v4, :cond_2

    .line 2680
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->unbindService(Landroid/content/ServiceConnection;)V

    .line 2681
    iput-object v5, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mService:Lcom/android/syncml/service/ISyncMLService;

    .line 2685
    :cond_2
    const v4, 0x7f070042

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/htccontacts/widget/ScrollStatusScrollView;

    .line 2686
    .local v3, scrollView:Lcom/android/htccontacts/widget/ScrollStatusScrollView;
    if-eqz v3, :cond_3

    .line 2687
    invoke-virtual {v3, v5}, Lcom/android/htccontacts/widget/ScrollStatusScrollView;->setOnScrollChangeListener(Lcom/android/htccontacts/widget/ScrollStatusScrollView$ScrollChangeListener;)V

    .line 2689
    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 3162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3184
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3164
    :pswitch_0
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[EditContactActivity2]Save contact"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    if-nez v0, :cond_0

    .line 3166
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doSaveAction()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    .line 3168
    :cond_0
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    goto :goto_0

    .line 3170
    :pswitch_1
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[EditContactActivity2]Discard edit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3171
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doRevertAction()Z

    move-result v0

    goto :goto_0

    .line 3174
    :pswitch_2
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[EditContactActivity2]Add photo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3176
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoAction()Z

    move-result v0

    goto :goto_0

    .line 3178
    :pswitch_3
    const-string v0, "ANALYTIC_HtcContacts"

    const-string v1, "[EditContactActivity2]Remove photo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doRemovePhotoAction()Z

    move-result v0

    goto :goto_0

    .line 3162
    nop

    :pswitch_data_0
    .packed-switch 0x7f070105
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 313
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onPause()V

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mActivityActive:Z

    .line 315
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"
    .parameter "b"

    .prologue
    .line 5826
    packed-switch p1, :pswitch_data_0

    .line 5831
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/htccontacts/app/BaseActivity;->onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V

    .line 5832
    return-void

    .line 5828
    :pswitch_0
    invoke-direct {p0, p2, p3}, Lcom/android/htccontacts/ui/EditContactActivity2;->prepareDownloadFacdbookMePhotoDialog(Landroid/app/Dialog;Landroid/os/Bundle;)V

    goto :goto_0

    .line 5826
    nop

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 3116
    const v6, 0x7f070107

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3117
    .local v0, addPhotItem:Landroid/view/MenuItem;
    const v6, 0x7f070105

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 3118
    .local v2, doneItem:Landroid/view/MenuItem;
    const v6, 0x7f070108

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 3131
    .local v3, removePhotItem:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3132
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3137
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v6

    if-lt v5, v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v6, v6, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 3155
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v4}, Lcom/htc/widget/HtcFooterButton;->isEnabled()Z

    move-result v4

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 3157
    return v5

    .line 3143
    :cond_2
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v6}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 3144
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3147
    iget-object v6, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v6}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->hasSetPhoto()Z

    move-result v1

    .line 3148
    .local v1, bHasSetPhoto:Z
    if-nez v1, :cond_3

    move v4, v5

    :cond_3
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3149
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onRequest(I)V
    .locals 1
    .parameter "request"

    .prologue
    .line 4034
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->hasValidState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4042
    :goto_0
    return-void

    .line 4036
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 4038
    :pswitch_0
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doPickPhotoAction()Z

    goto :goto_0

    .line 4036
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 2519
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2605
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 303
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onResume()V

    .line 304
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mActivityActive:Z

    .line 305
    invoke-static {}, Lcom/htc/util/contacts/TMOClient;->isMyPhonebookEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->myPhonebookCancelSync()V

    .line 308
    :cond_0
    iput-boolean v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    .line 309
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 2477
    invoke-super {p0, p1}, Lcom/android/htccontacts/app/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2512
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/android/htccontacts/app/BaseActivity;->onStop()V

    .line 323
    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mIsTryDoSaveAction:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mDetectGotoHome:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/htccontacts/util/ContactsUtils;->DetectGotoHome(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->autoSave()V

    .line 327
    :cond_0
    return-void
.end method

.method resetNewContact()V
    .locals 0

    .prologue
    .line 6545
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->doAddAction()Z

    .line 6547
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 6548
    return-void
.end method

.method public setQueryEntitiesTaskDone(Z)V
    .locals 0
    .parameter "bQueryEntitiesTaskDone"

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbQueryEntitiesTaskDone:Z

    .line 605
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindUpdateName()V

    .line 606
    return-void
.end method

.method public setQueryNamePhotoTaskDone(Z)V
    .locals 0
    .parameter "bQueryNamePhotoTaskDone"

    .prologue
    .line 599
    iput-boolean p1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mbQueryNamePhotoTaskDone:Z

    .line 600
    invoke-virtual {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->bindUpdateName()V

    .line 601
    return-void
.end method

.method setupHeader()V
    .locals 6

    .prologue
    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 613
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 615
    :cond_1
    iget-boolean v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isProfile:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->isSocialnetworkLogin()Z

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->isGooglePlusLogin:Z

    if-eqz v2, :cond_3

    .line 616
    :cond_2
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setVisibility(I)V

    .line 617
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 645
    :goto_1
    invoke-direct {p0}, Lcom/android/htccontacts/ui/EditContactActivity2;->controlSaveButtonEnabled()V

    goto :goto_0

    .line 618
    :cond_3
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v2

    if-lt v5, v2, :cond_5

    :cond_4
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mQueryNamePhotoResult:Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;

    iget-object v2, v2, Lcom/android/htccontacts/ui/EditContactActivity2$QueryNamePhotoResult;->rawContact_Id:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v5, v2, :cond_6

    .line 620
    :cond_5
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v2, v3}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setVisibility(I)V

    .line 621
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mllTitle:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 624
    :cond_6
    invoke-static {p0}, Lcom/android/htccontacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/htccontacts/model/AccountTypeManager;

    move-result-object v1

    .line 626
    .local v1, sources:Lcom/android/htccontacts/model/AccountTypeManager;
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->getContactsSource(I)Lcom/android/htccontacts/model/AccountType;

    move-result-object v0

    .line 627
    .local v0, selectedSource:Lcom/android/htccontacts/model/AccountType;
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {p0, v4}, Lcom/android/htccontacts/ui/EditContactActivity2;->getEntityDelta(I)Lcom/android/htccontacts/model/EntityDelta;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setState(Lcom/android/htccontacts/model/EntityDelta;Lcom/android/htccontacts/model/AccountType;)V

    .line 635
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->disableExchangeNameEditor()V

    .line 636
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->requestFocusNameEditor()Z

    .line 638
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v2}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->isSimSource()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 639
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v2, v5}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setSimTypeHeader(Z)V

    goto :goto_1

    .line 641
    :cond_7
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mPhoneNameEditableHeaderView:Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;

    invoke-virtual {v2, v4}, Lcom/android/htccontacts/ui/widget/PhoneNameEditableHeaderView;->setSimTypeHeader(Z)V

    goto :goto_1
.end method

.method protected setupNewAddedGroup()V
    .locals 4

    .prologue
    .line 730
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 731
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDeltaList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 733
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mState:Lcom/android/htccontacts/model/EntityDeltaList;

    invoke-virtual {v2}, Lcom/android/htccontacts/model/EntityDeltaList;->size()I

    move-result v1

    .line 734
    .local v1, nNonSnsize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 736
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mListNewAddedGroup:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    .end local v0           #i:I
    .end local v1           #nNonSnsize:I
    :cond_0
    return-void
.end method

.method public startManagingDialog(Landroid/app/Dialog;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 2702
    iget-object v2, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mManagedDialogWeakRefs:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2703
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2704
    .local v0, dialogRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    iget-object v1, p0, Lcom/android/htccontacts/ui/EditContactActivity2;->mManagedDialogWeakRefs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2705
    monitor-exit v2

    .line 2707
    return-void

    .line 2705
    .end local v0           #dialogRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Landroid/app/Dialog;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
