.class public Lcom/htc/album/addons/UploadEditorTemplate;
.super Lcom/htc/opensense2/album/ViewTemplateBase;
.source "UploadEditorTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;,
        Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;,
        Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;,
        Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;,
        Lcom/htc/album/addons/UploadEditorTemplate$FilmstripPreCacheHandler;,
        Lcom/htc/album/addons/UploadEditorTemplate$UploadEditorConstants;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/htc/opensense2/album/ViewTemplateBase",
        "<",
        "Lcom/htc/album/addons/FullFlimSurfaceView;",
        ">;"
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:I = 0x1f

.field private static final KEY_TAG_DISPLAY_NAME:Ljava/lang/String; = "tag_display_name"

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final PAGE_SIZE:I = 0x5

.field public static REFLECTION_BKG_COLOR:I = 0x0

.field public static final TEMPLATE_LOCAL_FILMSTRIP_VIEW:I = 0x8ba

.field public static final TITLEBAR_UPLOADEDITOR:I = 0x5

.field private static final UPLOADER_FOOTER:I = 0x65

.field private static final UPLOADER_HEADER:I = 0x64


# instance fields
.field private final ANIMATION_DURATION:I

.field private final KEY_TAGS_DESCRIPTION:Ljava/lang/String;

.field private mAnimationEnter:Landroid/view/animation/Animation;

.field private mAnimationLeave:Landroid/view/animation/Animation;

.field private mBundle:Landroid/os/Bundle;

.field private mBundleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonTag:Landroid/widget/Button;

.field private mCurrentOrientation:I

.field private mDecodeListener:Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;

.field private mEditorDescription:Landroid/widget/EditText;

.field private mEditorIcon:Landroid/widget/ImageView;

.field private mEditorIndicator:Landroid/widget/TextView;

.field private mEditorTitleGroup:Landroid/widget/RelativeLayout;

.field private mEditorTitleMain:Landroid/view/ViewGroup;

.field private mEditorTitleText:Landroid/widget/EditText;

.field private mFilmstripIndicator:Landroid/widget/TextView;

.field private mFilmstripTitle:Landroid/widget/LinearLayout;

.field private mFilmstripTitleText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsDeleteAll:Z

.field private mIsDisableTag:Z

.field private mItemClickListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemClickListener;

.field private mItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

.field private mMenuMgr:Lcom/htc/album/helper/MenuManager;

.field private mPhotoPos:I

.field private mRunningMode:I

.field private mServicePkgName:Ljava/lang/String;

.field private mTagBtnGroup:Landroid/widget/RelativeLayout;

.field private mTagBtn_Btn:Landroid/widget/Button;

.field private mTagBtn_Icon:Landroid/widget/ImageView;

.field private mTagBtn_Text:Landroid/widget/TextView;

.field private mTagButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTagDescription:Landroid/widget/TextView;

.field protected mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

.field private mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

.field private mbCleanTop5FrinedList:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/htc/album/addons/UploadEditorTemplate;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    .line 99
    const/high16 v0, -0x100

    sput v0, Lcom/htc/album/addons/UploadEditorTemplate;->REFLECTION_BKG_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/opensense2/album/AdapterBase;Lcom/htc/opensense2/album/DisplayManagerInterface;)V
    .locals 4
    .parameter "adapterBase"
    .parameter "listener"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 403
    invoke-direct {p0, p1, p2}, Lcom/htc/opensense2/album/ViewTemplateBase;-><init>(Landroid/widget/BaseAdapter;Lcom/htc/opensense2/album/DisplayManagerInterface;)V

    .line 95
    const/16 v0, 0x258

    iput v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->ANIMATION_DURATION:I

    .line 97
    const-string v0, "tags_description"

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->KEY_TAGS_DESCRIPTION:Ljava/lang/String;

    .line 107
    new-instance v0, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/UploadEditorTemplate$OnTagButtonOnClickListener;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagButtonClickListener:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/htc/album/helper/MenuManager;

    invoke-direct {v0}, Lcom/htc/album/helper/MenuManager;-><init>()V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    .line 109
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    .line 111
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    .line 112
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    .line 113
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    .line 114
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    .line 115
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    .line 116
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIcon:Landroid/widget/ImageView;

    .line 117
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    .line 118
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagDescription:Landroid/widget/TextView;

    .line 120
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagBtnGroup:Landroid/widget/RelativeLayout;

    .line 121
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagBtn_Btn:Landroid/widget/Button;

    .line 122
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagBtn_Icon:Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagBtn_Text:Landroid/widget/TextView;

    .line 125
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripTitle:Landroid/widget/LinearLayout;

    .line 126
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripTitleText:Landroid/widget/TextView;

    .line 127
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripIndicator:Landroid/widget/TextView;

    .line 128
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;

    .line 129
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 130
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationLeave:Landroid/view/animation/Animation;

    .line 131
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    .line 132
    iput v3, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mbCleanTop5FrinedList:Z

    .line 137
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 139
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    .line 140
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    .line 141
    iput-boolean v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDeleteAll:Z

    .line 142
    iput v3, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mCurrentOrientation:I

    .line 143
    iput-boolean v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDisableTag:Z

    .line 148
    iput v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    .line 150
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 2146
    new-instance v0, Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;

    invoke-direct {v0, p0, v1}, Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;Lcom/htc/album/addons/UploadEditorTemplate$1;)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDecodeListener:Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;

    .line 405
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sput v0, Lcom/htc/album/addons/UploadEditorTemplate;->REFLECTION_BKG_COLOR:I

    .line 406
    return-void
.end method

.method private ForceGalleryBeFocused()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2018
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2019
    const/4 v0, 0x0

    .line 2026
    :goto_0
    return v0

    .line 2021
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v0}, Lcom/htc/album/addons/FullFlimSurfaceView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2022
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/FullFlimSurfaceView;->setFocusableInTouchMode(Z)V

    .line 2026
    :goto_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v0}, Lcom/htc/album/addons/FullFlimSurfaceView;->requestFocus()Z

    move-result v0

    goto :goto_0

    .line 2024
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v0, v1}, Lcom/htc/album/addons/FullFlimSurfaceView;->setFocusable(Z)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/album/addons/UploadEditorTemplate;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/album/addons/UploadEditorTemplate;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput p1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/album/addons/UploadEditorTemplate;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/htc/album/addons/UploadEditorTemplate;->setupUploadEditorTitle(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/album/addons/UploadEditorTemplate;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mbCleanTop5FrinedList:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/htc/album/addons/UploadEditorTemplate;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mbCleanTop5FrinedList:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/htc/album/addons/UploadEditorTemplate;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    return v0
.end method

.method static synthetic access$2200(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/BaseAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/album/addons/UploadEditorTemplate;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/album/addons/UploadEditorTemplate;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/album/addons/UploadEditorTemplate;)Lcom/htc/opensense2/album/DisplayManagerInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/album/addons/UploadEditorTemplate;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    return-object v0
.end method

.method private adjustHeaderBarUI(Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;Z)V
    .locals 5
    .parameter "headerBar"
    .parameter "isHideEditTitle"

    .prologue
    const v4, 0x7f080034

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2049
    if-nez p1, :cond_1

    .line 2099
    :cond_0
    :goto_0
    return-void

    .line 2052
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    if-nez v1, :cond_2

    .line 2054
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitleGroup()Landroid/widget/RelativeLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    .line 2056
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    if-nez v1, :cond_3

    .line 2058
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitle()Landroid/widget/TextView;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    .line 2061
    :cond_3
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 2064
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2065
    .local v0, params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_8

    .line 2067
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->showControlBar(I)V

    .line 2071
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v1}, Lcom/htc/opensense2/album/TemplateActivityBase;->isScreenPortrait()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2073
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 2075
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2076
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 2080
    :cond_4
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v1}, Lcom/htc/album/addons/FullFlimSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2084
    :cond_5
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    .line 2086
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2087
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1}, Lcom/htc/album/modules/ui/ControlBarManager;->invalidateControlBars()V

    .line 2091
    :cond_6
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v1}, Lcom/htc/album/addons/FullFlimSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 2086
    :cond_7
    const/4 v1, 0x4

    goto :goto_1

    .line 2096
    :cond_8
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v1, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->hideControlBar(I)V

    goto :goto_0
.end method

.method public static createTaggedPhotoIntent(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Landroid/content/Intent;
    .locals 12
    .parameter "context"
    .parameter "nMode"
    .parameter "strCusPkgName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .local p3, photoList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    const/4 v11, 0x1

    .line 1179
    const/4 v0, 0x0

    .line 1180
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 1182
    .local v2, intent:Landroid/content/Intent;
    if-nez p0, :cond_0

    move-object v8, v2

    .line 1251
    :goto_0
    return-object v8

    .line 1185
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    :cond_1
    move-object v8, v2

    .line 1186
    goto :goto_0

    .line 1188
    :cond_2
    sget-object v8, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[HTCAlbum][LocalFilmstripviewTemplate][createTaggedPhotoIntent]: mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", list: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/16 v8, 0x1001

    if-ne p1, v8, :cond_3

    .line 1193
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v6, v8, v9

    .line 1194
    .local v6, strServiceName:Ljava/lang/String;
    invoke-static {p0, v6, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_0

    .line 1196
    .end local v6           #strServiceName:Ljava/lang/String;
    :cond_3
    const/16 v8, 0x1002

    if-ne p1, v8, :cond_4

    .line 1198
    sget-object v8, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v6, v8, v11

    .line 1199
    .restart local v6       #strServiceName:Ljava/lang/String;
    invoke-static {p0, v6, p3}, Lcom/htc/opensense2/album/SocialNetworkManager/AlbumSNManager;->createTaggedPhotoIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v8

    goto :goto_0

    .line 1201
    .end local v6           #strServiceName:Ljava/lang/String;
    :cond_4
    const/16 v8, 0x1016

    if-ne p1, v8, :cond_9

    .line 1203
    invoke-static {p0, p2}, Lcom/htc/album/helper/MenuManager;->getIntentForUploadService(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_5

    move-object v8, v2

    .line 1204
    goto :goto_0

    .line 1206
    :cond_5
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .line 1207
    .local v3, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v7

    .line 1208
    .local v7, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 1212
    .local v1, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const/4 v4, 0x0

    .local v4, nIndex:I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v4, :cond_8

    .line 1214
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1215
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v9, "com.htc.opensense.upload.TITLE"

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    const-string v9, "com.htc.opensense.upload.MIMETYPE"

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v9, "com.htc.opensense.upload.DESCRIPTION"

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const-string v9, "com.htc.opensense.upload.URI"

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1224
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_7

    .line 1212
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1227
    :cond_7
    const/4 v5, 0x0

    .local v5, nIndexTag:I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_6

    .line 1229
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1230
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v8, "com.htc.opensense.upload.REFERENCE"

    invoke-virtual {v0, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1231
    const-string v9, "tag_display_name"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    const-string v9, "com.htc.opensense.upload.USER_ID"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getOwnerID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    const-string v9, "com.htc.opensense.upload.TAG_X_CENTER_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1234
    const-string v9, "com.htc.opensense.upload.TAG_Y_CENTER_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1235
    const-string v9, "com.htc.opensense.upload.TAG_W_IN_WIDTH_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getWidth()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1236
    const-string v9, "com.htc.opensense.upload.TAG_H_IN_HEIGHT_PERCENT"

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getHeight()F

    move-result v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1237
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1227
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1241
    .end local v5           #nIndexTag:I
    :cond_8
    invoke-virtual {v2, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1242
    const-string v8, "htc.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    const-string v8, "com.htc.opensense.upload.UPLOAD_META_DATA_LIST"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1244
    const-string v8, "com.htc.opensense.upload.UPLOAD_TAG_DATA_LIST"

    invoke-virtual {v2, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-object v8, v2

    .line 1246
    goto/16 :goto_0

    .line 1250
    .end local v1           #faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v3           #mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v4           #nIndex:I
    .end local v7           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_9
    sget-object v8, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v9, "[HTCAlbum][LocalFilmstripviewTemplate][createTaggedPhotoIntent]: Shouldn\'t Run to here !"

    invoke-static {v8, v9}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v2

    .line 1251
    goto/16 :goto_0
.end method

.method private getSeviceLogo()I
    .locals 3

    .prologue
    const v0, 0x7f020032

    .line 1637
    iget v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v2, 0x1001

    if-ne v1, v2, :cond_1

    .line 1638
    const v0, 0x7f020016

    .line 1661
    :cond_0
    :goto_0
    return v0

    .line 1639
    :cond_1
    iget v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v2, 0x1002

    if-ne v1, v2, :cond_2

    .line 1640
    const v0, 0x7f020017

    goto :goto_0

    .line 1641
    :cond_2
    iget v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v2, 0x1016

    if-ne v1, v2, :cond_3

    .line 1643
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1645
    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1649
    const-string v1, "com.htc.friendstream.sinaweiboplugin"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1653
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1655
    const v0, 0x7f020031

    goto :goto_0

    .line 1661
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initUploadEditorUI(I)V
    .locals 19
    .parameter "nMode"

    .prologue
    .line 1334
    new-instance v16, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    .line 1335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->start()V

    .line 1337
    invoke-direct/range {p0 .. p1}, Lcom/htc/album/addons/UploadEditorTemplate;->isUploadEditorMode(I)Z

    move-result v16

    if-nez v16, :cond_0

    .line 1339
    const/16 p1, 0x1001

    .line 1340
    sget-object v16, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v17, "[HTCAlbum][LocalFilmstripViewTemplate][initUploadEditorUI]: The mode is not support set to FB mode !"

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_0
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorTemplate;->isUploadItemVideo(I)Z

    move-result v9

    .line 1344
    .local v9, isFirstItemVideo:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1345
    .local v12, res:Landroid/content/res/Resources;
    const/16 v16, 0x1001

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_e

    const/4 v7, 0x1

    .line 1346
    .local v7, isFacebook:Z
    :goto_0
    if-eqz v7, :cond_f

    if-nez v9, :cond_f

    const/4 v8, 0x1

    .line 1347
    .local v8, isFacebookImage:Z
    :goto_1
    if-nez v8, :cond_1

    const/16 v16, 0x1016

    move/from16 v0, v16

    move/from16 v1, p1

    if-ne v0, v1, :cond_10

    :cond_1
    const/4 v10, 0x1

    .line 1349
    .local v10, isHideEditTitle:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1350
    .local v6, intent:Landroid/content/Intent;
    const-string v16, "disable_tag"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDisableTag:Z

    .line 1366
    sget-object v16, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[HTCAlbum][LocalFilmstripViewTemplate][initUploadEditorUI]: Disable Tag: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDisableTag:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 1369
    .local v2, activity:Landroid/app/Activity;
    const v16, 0x7f0a0055

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v5

    check-cast v5, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;

    .line 1373
    .local v5, headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    if-nez v16, :cond_2

    .line 1375
    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitleGroup()Landroid/widget/RelativeLayout;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    .line 1378
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 1380
    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitle()Landroid/widget/TextView;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    .line 1383
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIcon:Landroid/widget/ImageView;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    .line 1385
    invoke-virtual {v5}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->getTitleIcon()Landroid/widget/ImageView;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIcon:Landroid/widget/ImageView;

    .line 1388
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 1390
    const v16, 0x7f0a0086

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    .line 1391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    move-object/from16 v17, v0

    if-eqz v10, :cond_11

    const/16 v16, 0x4

    :goto_3
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1393
    .local v11, lp:Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagTitle(Landroid/content/Context;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1398
    const v16, 0x7f08002f

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Lcom/htc/album/addons/UploadEditorTemplate$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorTemplate$2;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1429
    .end local v11           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    if-nez v16, :cond_6

    .line 1431
    const v16, 0x7f0a0087

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/EditText;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1438
    .restart local v11       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v16, 0x7f080030

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    move/from16 v0, v16

    iput v0, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    const v17, 0x7f08002b

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 1442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v17, v0

    if-eqz v10, :cond_12

    const v16, 0x7f0b0054

    :goto_4
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagDescription(Landroid/content/Context;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Lcom/htc/album/addons/UploadEditorTemplate$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorTemplate$3;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    new-instance v17, Lcom/htc/album/addons/UploadEditorTemplate$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorTemplate$4;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    invoke-virtual/range {v16 .. v17}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1469
    .end local v11           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDisableTag:Z

    move/from16 v16, v0

    if-nez v16, :cond_9

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagBtnGroup:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    if-nez v16, :cond_7

    .line 1537
    const v16, 0x7f0a0089

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mTagBtnGroup:Landroid/widget/RelativeLayout;

    .line 1538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagBtnGroup:Landroid/widget/RelativeLayout;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1544
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagDescription:Landroid/widget/TextView;

    move-object/from16 v16, v0

    if-nez v16, :cond_8

    .line 1545
    const v16, 0x7f0a008d

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mTagDescription:Landroid/widget/TextView;

    .line 1546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagDescription:Landroid/widget/TextView;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1549
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-nez v16, :cond_9

    .line 1551
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mbCleanTop5FrinedList:Z

    .line 1552
    const v16, 0x7f0a0088

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/Button;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Button;->setSingleLine()V

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    const v17, 0x7f0b0056

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setText(I)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mTagButtonClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v17, v0

    if-eqz v9, :cond_13

    const/16 v16, 0x4

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagButton(Landroid/content/Context;)I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 1564
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual/range {v16 .. v16}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v16

    if-eqz v16, :cond_a

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/album/addons/FullFlimSurfaceView;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/album/addons/FullFlimSurfaceView;->setFocusable(Z)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/album/addons/FullFlimSurfaceView;

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/album/addons/FullFlimSurfaceView;->setFocusableInTouchMode(Z)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/htc/album/addons/FullFlimSurfaceView;

    new-instance v17, Lcom/htc/album/addons/UploadEditorTemplate$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/album/addons/UploadEditorTemplate$5;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    invoke-virtual/range {v16 .. v17}, Lcom/htc/album/addons/FullFlimSurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1585
    :cond_a
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 1590
    .local v3, bundle:Landroid/os/Bundle;
    const-string v16, "description"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1591
    .local v13, strDescription:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    if-eqz v13, :cond_b

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_b

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    :cond_b
    const-string v16, "title"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1596
    .local v15, strTitle:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    move-object/from16 v16, v0

    if-eqz v16, :cond_c

    if-eqz v15, :cond_c

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_c

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1623
    :cond_c
    const-string v16, "tags_description"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1624
    .local v14, strTagButton:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    if-eqz v14, :cond_d

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_d

    .line 1625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1633
    .end local v3           #bundle:Landroid/os/Bundle;
    .end local v13           #strDescription:Ljava/lang/String;
    .end local v14           #strTagButton:Ljava/lang/String;
    .end local v15           #strTitle:Ljava/lang/String;
    :cond_d
    :goto_6
    return-void

    .line 1345
    .end local v2           #activity:Landroid/app/Activity;
    .end local v5           #headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #isFacebook:Z
    .end local v8           #isFacebookImage:Z
    .end local v10           #isHideEditTitle:Z
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 1346
    .restart local v7       #isFacebook:Z
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1347
    .restart local v8       #isFacebookImage:Z
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1391
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v5       #headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    .restart local v6       #intent:Landroid/content/Intent;
    .restart local v10       #isHideEditTitle:Z
    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 1442
    .restart local v11       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_12
    const v16, 0x7f0b0055

    goto/16 :goto_4

    .line 1556
    .end local v11           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 1628
    :catch_0
    move-exception v4

    .line 1631
    .local v4, e:Ljava/lang/Exception;
    sget-object v16, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v17, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: try init first item description & Title !"

    invoke-static/range {v16 .. v17}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method private isUploadEditorMode(I)Z
    .locals 1
    .parameter "nMode"

    .prologue
    .line 422
    const/16 v0, 0x1001

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1002

    if-eq p1, v0, :cond_0

    const/16 v0, 0x1016

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUploadItemVideo(I)Z
    .locals 5
    .parameter "pos"

    .prologue
    .line 1315
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 1316
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    const/4 v3, 0x0

    .line 1319
    .local v3, isVideo:Z
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getItem(I)Lcom/htc/opensense2/album/util/ImageManager$IImage;

    move-result-object v2

    .line 1321
    .local v2, image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/htc/opensense2/album/util/ImageManager$IImage;->isVideo()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 1329
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :goto_0
    return v3

    .line 1321
    .restart local v2       #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1323
    .end local v2           #image:Lcom/htc/opensense2/album/util/ImageManager$IImage;
    :catch_0
    move-exception v1

    .line 1325
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1326
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private final setMaxIndicatorWidth()I
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 825
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->isUploadEditorMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    .line 826
    .local v5, textView:Landroid/widget/TextView;
    :goto_0
    if-nez v5, :cond_2

    .line 843
    :cond_0
    :goto_1
    return v3

    .line 825
    .end local v5           #textView:Landroid/widget/TextView;
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripIndicator:Landroid/widget/TextView;

    goto :goto_0

    .line 828
    .restart local v5       #textView:Landroid/widget/TextView;
    :cond_2
    iget-object v6, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 829
    .local v1, count:I
    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 830
    .local v4, textPaint:Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 831
    .local v2, indicator:Ljava/lang/String;
    if-lez v1, :cond_3

    .line 832
    iget-object v6, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v6}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 833
    .local v0, context:Landroid/content/Context;
    const v6, 0x7f0b0098

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const/4 v8, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 837
    .end local v0           #context:Landroid/content/Context;
    :cond_3
    const/4 v3, 0x0

    .line 838
    .local v3, ret:I
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 839
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    float-to-int v6, v6

    add-int/lit8 v3, v6, 0x1

    .line 840
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setWidth(I)V

    goto :goto_1
.end method

.method private setupUploadEditorTitle(Z)V
    .locals 11
    .parameter "bVisible"

    .prologue
    .line 1666
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    if-nez v9, :cond_1

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1669
    :cond_1
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1671
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v9}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 1672
    .local v8, res:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v9, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v9}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    .line 1673
    .local v1, index:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_0

    .line 1674
    invoke-direct {p0, v1}, Lcom/htc/album/addons/UploadEditorTemplate;->isUploadItemVideo(I)Z

    move-result v5

    .line 1675
    .local v5, isVideo:Z
    const/16 v9, 0x1001

    iget v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    if-ne v9, v10, :cond_9

    const/4 v2, 0x1

    .line 1676
    .local v2, isFacebook:Z
    :goto_2
    if-eqz v2, :cond_a

    if-nez v5, :cond_a

    const/4 v3, 0x1

    .line 1677
    .local v3, isFacebookImage:Z
    :goto_3
    if-nez v3, :cond_2

    const/16 v9, 0x1016

    iget v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    if-ne v9, v10, :cond_b

    :cond_2
    const/4 v4, 0x1

    .line 1679
    .local v4, isHideEditTitle:Z
    :goto_4
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIcon:Landroid/widget/ImageView;

    if-eqz v9, :cond_3

    .line 1681
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->getSeviceLogo()I

    move-result v7

    .line 1682
    .local v7, nResID:I
    const/4 v9, -0x1

    if-eq v7, v9, :cond_c

    .line 1683
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1688
    .end local v7           #nResID:I
    :cond_3
    :goto_5
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    if-eqz v9, :cond_4

    .line 1690
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1695
    .local v6, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v9, 0x7f08002f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1697
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    if-eqz v4, :cond_d

    const/4 v9, 0x4

    :goto_6
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1700
    .end local v6           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    if-eqz v9, :cond_5

    .line 1702
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1707
    .restart local v6       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v9, 0x7f080030

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1709
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    const v10, 0x7f08002b

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 1711
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    if-eqz v4, :cond_e

    const v9, 0x7f0b0054

    :goto_7
    invoke-virtual {v10, v9}, Landroid/widget/EditText;->setHint(I)V

    .line 1714
    .end local v6           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_6

    .line 1716
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1717
    .restart local v6       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v9, 0x7f080031

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1718
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleGroup:Landroid/widget/RelativeLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1740
    .end local v6           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    if-eqz v9, :cond_7

    .line 1741
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1742
    .restart local v6       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v9, 0x7f080031

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1743
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    if-eqz v5, :cond_f

    const/4 v9, 0x4

    :goto_8
    invoke-virtual {v10, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 1747
    .end local v6           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    invoke-virtual {v9}, Lcom/htc/album/modules/ui/ControlBarManager;->getHeaderBar()Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    check-cast v0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;

    .line 1748
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    invoke-direct {p0, v0, v4}, Lcom/htc/album/addons/UploadEditorTemplate;->adjustHeaderBarUI(Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;Z)V

    .line 1750
    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->invalidate()V

    goto/16 :goto_0

    .line 1669
    .end local v0           #headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    .end local v1           #index:I
    .end local v2           #isFacebook:Z
    .end local v3           #isFacebookImage:Z
    .end local v4           #isHideEditTitle:Z
    .end local v5           #isVideo:Z
    .end local v8           #res:Landroid/content/res/Resources;
    :cond_8
    const/4 v9, 0x4

    goto/16 :goto_1

    .line 1675
    .restart local v1       #index:I
    .restart local v5       #isVideo:Z
    .restart local v8       #res:Landroid/content/res/Resources;
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1676
    .restart local v2       #isFacebook:Z
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1677
    .restart local v3       #isFacebookImage:Z
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 1685
    .restart local v4       #isHideEditTitle:Z
    .restart local v7       #nResID:I
    :cond_c
    sget-object v9, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v10, "[HTCAlbum][LocalFilmstripviewTemplate][setupUploadEditorTitle]: Shouldn\'t run to here ! set Icon NG !"

    invoke-static {v9, v10}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1697
    .end local v7           #nResID:I
    .restart local v6       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_d
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1711
    :cond_e
    const v9, 0x7f0b0055

    goto :goto_7

    .line 1743
    :cond_f
    const/4 v9, 0x0

    goto :goto_8
.end method

.method private showProgressBar(Z)V
    .locals 1
    .parameter "bShow"

    .prologue
    .line 1009
    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    if-eqz v0, :cond_0

    .line 1011
    :cond_0
    return-void
.end method

.method private updatePickerCount(Z)V
    .locals 6
    .parameter "bIsForceAll"

    .prologue
    .line 2118
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    if-nez v4, :cond_1

    .line 2137
    :cond_0
    :goto_0
    return-void

    .line 2121
    :cond_1
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->isDeleteMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2126
    const/4 v1, 0x0

    .line 2127
    .local v1, nCount:I
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 2128
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    const/4 v4, 0x1

    if-ne v4, p1, :cond_2

    .line 2129
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getCount()I

    move-result v1

    .line 2133
    :goto_1
    const-string v3, ""

    .line 2134
    .local v3, szTextConfirm:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2135
    .local v2, resource:Landroid/content/res/Resources;
    const v4, 0x20c01fc

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2137
    goto :goto_0

    .line 2131
    .end local v2           #resource:Landroid/content/res/Resources;
    .end local v3           #szTextConfirm:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getPickerCount()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public bindAdapter()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 863
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/TemplateActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;

    .line 865
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 866
    .local v2, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    const-string v5, "go_last"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v7, v4, :cond_0

    .line 868
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    .line 869
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    const-string v5, "go_last"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 872
    :cond_0
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v4}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 874
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 875
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-eqz v0, :cond_1

    .line 877
    invoke-virtual {v0, p0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->setAdapterListener(Lcom/htc/opensense2/album/AdapterInterface;)V

    .line 880
    :cond_1
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->getImageList()Lcom/htc/opensense2/album/util/ImageManager$IImageList;

    move-result-object v3

    check-cast v3, Lcom/htc/sunny2/IMediaList;

    .line 882
    .local v3, mediaList:Lcom/htc/sunny2/IMediaList;
    new-instance v4, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    .line 884
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 885
    .local v1, inValue:Landroid/os/Bundle;
    const-string v4, "TEXTURE_MAX_COUNT"

    const/16 v5, 0x14

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 887
    const-string v4, "ENABLE_QUALITY_OPTIONS"

    invoke-virtual {v1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 888
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v5}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->init(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 890
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v4}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setUpdateListener(Lcom/htc/sunny2/Preparator$UpdateListener;)V

    .line 891
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDecodeListener:Lcom/htc/album/addons/UploadEditorTemplate$DecodeListener;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->setDecodeStatusListener(Lcom/htc/sunny2/fullfilmview/FullFilmViewPreparator$DecodeStatusListener;)V

    .line 893
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v4}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setPreparation(Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;)V

    .line 896
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v4}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 899
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v4}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    iget v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    invoke-virtual {v4, v5}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setSelection(I)V

    .line 902
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->ForceGalleryBeFocused()Z

    .line 903
    iget-boolean v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDeleteAll:Z

    invoke-direct {p0, v4}, Lcom/htc/album/addons/UploadEditorTemplate;->updatePickerCount(Z)V

    .line 905
    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    .end local v1           #inValue:Landroid/os/Bundle;
    .end local v3           #mediaList:Lcom/htc/sunny2/IMediaList;
    :cond_2
    return-void
.end method

.method public configureMainViewLayout(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    const v1, 0x7f080033

    .line 2103
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2105
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v0}, Lcom/htc/opensense2/album/TemplateActivityBase;->isScreenPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2107
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v0}, Lcom/htc/album/addons/FullFlimSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 2114
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v0, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v0}, Lcom/htc/album/addons/FullFlimSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method

.method protected bridge synthetic createMainView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->createMainView()Lcom/htc/album/addons/FullFlimSurfaceView;

    move-result-object v0

    return-object v0
.end method

.method protected createMainView()Lcom/htc/album/addons/FullFlimSurfaceView;
    .locals 3

    .prologue
    .line 429
    sget-object v1, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][LocalFilmstripviewTemplate][createMainView]: Begin"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/album/addons/FullFlimSurfaceView;

    .line 460
    :goto_0
    return-object v1

    .line 450
    :cond_0
    new-instance v0, Lcom/htc/album/addons/FullFlimSurfaceView;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/htc/album/addons/FullFlimSurfaceView;-><init>(Landroid/content/Context;)V

    .line 451
    .local v0, fsView:Lcom/htc/album/addons/FullFlimSurfaceView;
    invoke-virtual {v0}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setIsUploadEditor(Z)V

    .line 457
    new-instance v1, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/UploadEditorTemplate$ItemSelectedListener;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    .line 458
    invoke-virtual {v0}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mItemSelectedListener:Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setOnItemSelectedListener(Lcom/htc/sunny2/fullfilmview/FullFilmView$OnItemSelectedListener;)V

    move-object v1, v0

    .line 460
    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 8

    .prologue
    .line 2209
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v4

    if-gtz v4, :cond_2

    .line 2210
    :cond_0
    const-string v2, ""

    .line 2224
    :cond_1
    :goto_0
    return-object v2

    .line 2212
    :cond_2
    const-string v2, ""

    .line 2213
    .local v2, indicator:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v4, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v4}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 2214
    .local v3, numerator:I
    if-gtz v3, :cond_3

    const/4 v3, 0x1

    .line 2215
    :cond_3
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v1

    .line 2216
    .local v1, denominator:I
    if-lez v1, :cond_1

    .line 2218
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2219
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_4

    const-string v2, ""

    goto :goto_0

    .line 2221
    :cond_4
    const v4, 0x7f0b0098

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 496
    const/16 v0, 0x8ba

    return v0
.end method

.method public getServiceName(I)Ljava/lang/String;
    .locals 3
    .parameter "nMode"

    .prologue
    const/4 v2, 0x4

    .line 2249
    const/16 v0, 0x1001

    if-ne p1, v0, :cond_0

    .line 2251
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 2277
    :goto_0
    return-object v0

    .line 2253
    :cond_0
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_1

    .line 2255
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    .line 2257
    :cond_1
    const/16 v0, 0x1016

    if-ne p1, v0, :cond_4

    .line 2259
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 2261
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2263
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 2265
    :cond_2
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2267
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    aget-object v0, v0, v2

    goto :goto_0

    .line 2269
    :cond_3
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2271
    sget-object v0, Lcom/htc/opensense2/album/SocialNetworkManager/CommonServices;->SERVICES_SUPPORTED:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    goto :goto_0

    .line 2276
    :cond_4
    sget-object v0, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LocalFilmstripviewTemplate][getServiceName]: not support service, shouldn\'t here !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string v0, "not support service"

    goto :goto_0
.end method

.method public getSupportServiceMode(Ljava/lang/String;)I
    .locals 4
    .parameter "strService"

    .prologue
    const/4 v0, 0x0

    .line 980
    if-nez p1, :cond_0

    .line 1003
    :goto_0
    return v0

    .line 982
    :cond_0
    const-string v1, "com.htc.socialnetwork.facebook"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    sget-object v0, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LocalFLimstripview][getSupportServiceMode]: Set Mode Facrbook !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const/16 v0, 0x1001

    goto :goto_0

    .line 987
    :cond_1
    const-string v1, "com.htc.socialnetwork.flickr"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 989
    sget-object v0, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v1, "[HTCAlbum][LocalFLimstripview][getSupportServiceMode]: Set Mode Flickr !"

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    const/16 v0, 0x1002

    goto :goto_0

    .line 992
    :cond_2
    invoke-static {p1}, Lcom/htc/album/helper/MenuManager;->isCHSCustomerUploadPkgName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 994
    sget-object v0, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HTCAlbum][LocalFLimstripview][getSupportServiceMode]: Set Mode Customer Upload ! Service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    .line 998
    const/16 v0, 0x1016

    goto :goto_0

    .line 1002
    :cond_3
    sget-object v1, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[HTCAlbum][LocalFLimstripview][getSupportServiceMode]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is unknow service !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public handleActivityMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1759
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1783
    :goto_0
    return-void

    .line 1762
    :sswitch_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 1765
    :sswitch_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v0}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->dismissDialog(I)V

    goto :goto_0

    .line 1768
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/htc/album/addons/UploadEditorTemplate;->setupUploadEditorTitle(Z)V

    goto :goto_0

    .line 1771
    :sswitch_3
    invoke-direct {p0, v1}, Lcom/htc/album/addons/UploadEditorTemplate;->setupUploadEditorTitle(Z)V

    goto :goto_0

    .line 1774
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/htc/album/addons/UploadEditorTemplate;->showProgressBar(Z)V

    goto :goto_0

    .line 1777
    :sswitch_5
    invoke-direct {p0, v1}, Lcom/htc/album/addons/UploadEditorTemplate;->showProgressBar(Z)V

    goto :goto_0

    .line 1780
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->updateFirstItemUI()V

    goto :goto_0

    .line 1759
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x30 -> :sswitch_0
        0x40 -> :sswitch_1
        0x50 -> :sswitch_6
        0x1394 -> :sswitch_4
        0x1395 -> :sswitch_5
    .end sparse-switch
.end method

.method public isDeleteMode()Z
    .locals 2

    .prologue
    .line 410
    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUploadEditorMode()Z
    .locals 2

    .prologue
    .line 415
    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v1, 0x1001

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v1, 0x1016

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 13
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 506
    sget-object v10, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[HTCAlbum][LocalFilmstripViewTemplate][onActivityResult]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v10}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 508
    .local v0, activity:Landroid/app/Activity;
    const/4 v10, -0x1

    if-ne p2, v10, :cond_1

    const/4 v6, 0x1

    .line 509
    .local v6, isOK:Z
    :goto_0
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 511
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    packed-switch p1, :pswitch_data_0

    .line 614
    :cond_0
    :goto_1
    return-void

    .line 508
    .end local v1           #adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    .end local v6           #isOK:Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 515
    .restart local v1       #adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    .restart local v6       #isOK:Z
    :pswitch_0
    sget-object v10, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LocalFilmstripViewTemplate][onActivityResult]: KA>>> TAG_RESULT_OK, mPhotoPos : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz p3, :cond_0

    .line 519
    const/4 v3, 0x0

    .line 520
    .local v3, bundleTagView:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 521
    const/4 v9, 0x0

    .line 523
    .local v9, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    if-eqz v3, :cond_2

    .line 524
    const-string v10, "tags"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 536
    :cond_2
    iget v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    if-eqz v9, :cond_0

    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    .line 539
    const/4 v2, 0x0

    .line 540
    .local v2, bundle2:Landroid/os/Bundle;
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    iget v11, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #bundle2:Landroid/os/Bundle;
    check-cast v2, Landroid/os/Bundle;

    .line 541
    .restart local v2       #bundle2:Landroid/os/Bundle;
    const-string v10, "tags"

    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 544
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 558
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v10}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0056

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 559
    .local v8, strTagInitDescription:Ljava/lang/String;
    const-string v10, "tags_description"

    invoke-virtual {v2, v10, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    if-eqz v10, :cond_3

    .line 563
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v10, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 565
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->requestLayout()V

    .line 608
    .end local v8           #strTagInitDescription:Ljava/lang/String;
    :cond_3
    :goto_2
    sget-object v10, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[LocalFilmstripViewTemplate][onActivityResult]: KA>>> TAG_RESULT_OK, Get Tag : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 569
    :cond_4
    if-eqz v9, :cond_3

    .line 571
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 573
    .local v7, strBtnTag:Ljava/lang/String;
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/album/TagUtils/TagInfo;

    .line 574
    .local v5, index:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_5

    .line 575
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 577
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v5, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 580
    .end local v5           #index:Lcom/htc/album/TagUtils/TagInfo;
    :cond_6
    const-string v10, "tags_description"

    invoke-virtual {v2, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    if-eqz v10, :cond_3

    .line 601
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v10, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 603
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->requestLayout()V

    goto/16 :goto_2

    .line 511
    nop

    :pswitch_data_0
    .packed-switch 0x88b9
        :pswitch_0
    .end packed-switch
.end method

.method public onCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1258
    invoke-virtual {p0, v3}, Lcom/htc/album/addons/UploadEditorTemplate;->setFeatureMode(I)V

    .line 1259
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1261
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    const-string v2, "UPLOAD_EDITOR_MODE"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1263
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1265
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 1059
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1061
    iget v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mCurrentOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->onScreenChange()V

    .line 1064
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 1065
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-eqz v0, :cond_0

    .line 1066
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->holdThumbThreads(Z)V

    .line 1069
    .end local v0           #adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    :cond_0
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mCurrentOrientation:I

    .line 1070
    return-void
.end method

.method public onConfirm()V
    .locals 0

    .prologue
    .line 1053
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->onConfirmUploadEditor()V

    .line 1054
    return-void
.end method

.method public onConfirmUploadEditor()V
    .locals 17

    .prologue
    .line 1074
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[HTCAlbum][LocalFilmstripviewTemplate][onConfirmUploadEditor]: Begin"

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    if-nez v14, :cond_0

    .line 1175
    :goto_0
    return-void

    .line 1080
    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    .line 1081
    const/4 v3, 0x0

    .line 1082
    .local v3, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #bundle:Landroid/os/Bundle;
    check-cast v3, Landroid/os/Bundle;

    .line 1083
    .restart local v3       #bundle:Landroid/os/Bundle;
    const-string v14, "title"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    const-string v14, "description"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    .end local v3           #bundle:Landroid/os/Bundle;
    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1089
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Bundle;

    .line 1091
    .local v8, index:Landroid/os/Bundle;
    if-eqz v8, :cond_2

    .line 1093
    new-instance v2, Lcom/htc/opensense/social/data/Medium;

    invoke-direct {v2}, Lcom/htc/opensense/social/data/Medium;-><init>()V

    .line 1094
    .local v2, b:Lcom/htc/opensense/social/data/Medium;
    new-instance v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    invoke-direct {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;-><init>()V

    .line 1097
    .local v1, a:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    const-string v14, "title"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    .line 1098
    const-string v14, "description"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    .line 1099
    const-string v14, "uri"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/net/Uri;

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v2, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    .line 1101
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v15, "KA>>> Upload "

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KA>>> KEY_TITLE : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Lcom/htc/opensense/social/data/Medium;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KA>>> KEY_DESCRIPTION : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Lcom/htc/opensense/social/data/Medium;->description:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KA>>> KEY_URI : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v2, Lcom/htc/opensense/social/data/Medium;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v1, v2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setProfile(Lcom/htc/opensense/social/data/Medium;)V

    .line 1107
    const-string v14, "mimeType"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setMimeType(Ljava/lang/String;)V

    .line 1109
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1111
    .local v12, tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    const-string v14, "tags"

    invoke-virtual {v8, v14}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    .line 1112
    .local v13, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/album/TagUtils/TagInfo;

    .line 1114
    .local v9, indexTag:Lcom/htc/album/TagUtils/TagInfo;
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "KA>>> Add Tag : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v9, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v9, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " X: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Y: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v9, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    new-instance v4, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    iget-object v14, v9, Lcom/htc/album/TagUtils/TagInfo;->mszTagID:Ljava/lang/String;

    invoke-direct {v4, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;-><init>(Ljava/lang/String;)V

    .line 1117
    .local v4, c:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    iget v14, v9, Lcom/htc/album/TagUtils/TagInfo;->mX:F

    invoke-virtual {v4, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterX(F)V

    .line 1118
    iget v14, v9, Lcom/htc/album/TagUtils/TagInfo;->mY:F

    invoke-virtual {v4, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setCenterY(F)V

    .line 1119
    const/high16 v14, 0x40a0

    invoke-virtual {v4, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setWidth(F)V

    .line 1120
    const/high16 v14, 0x40a0

    invoke-virtual {v4, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setHeight(F)V

    .line 1121
    iget-object v14, v9, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->setText(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1126
    .end local v4           #c:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v9           #indexTag:Lcom/htc/album/TagUtils/TagInfo;
    :cond_3
    invoke-virtual {v1, v12}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->setTags(Ljava/util/ArrayList;)V

    .line 1128
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1139
    .end local v1           #a:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v2           #b:Lcom/htc/opensense/social/data/Medium;
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #index:Landroid/os/Bundle;
    .end local v12           #tagList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v13           #tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    :cond_4
    const/4 v10, 0x0

    .line 1140
    .local v10, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v14}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 1144
    .local v5, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mServicePkgName:Ljava/lang/String;

    invoke-static {v5, v14, v15, v11}, Lcom/htc/album/addons/UploadEditorTemplate;->createTaggedPhotoIntent(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v10

    .line 1147
    if-eqz v10, :cond_8

    .line 1150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v14}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const/4 v15, -0x1

    invoke-virtual {v14, v15, v10}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1151
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/album/addons/UploadEditorTemplate;->setFeatureMode(I)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v14}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->finish()V

    .line 1156
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v15, 0x1001

    if-ne v14, v15, :cond_6

    .line 1158
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[HTCAlbum][LocalFilmstripviewTemplate][onConfirmUploadEditor]: Facebook Upload Success !"

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_5
    :goto_3
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[HTCAlbum][LocalFilmstripviewTemplate][onConfirmUploadEditor]: End"

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1160
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v15, 0x1002

    if-ne v14, v15, :cond_7

    .line 1162
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[HTCAlbum][LocalFilmstripviewTemplate][onConfirmUploadEditor]: Flickr Upload Success !"

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1164
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    const/16 v15, 0x1016

    if-ne v14, v15, :cond_5

    .line 1166
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[HTCAlbum][LocalFilmstripviewTemplate][onConfirmUploadEditor]: Sina Upload Success !"

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1170
    :cond_8
    sget-object v14, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v15, "[HTCAlbum][LocalFilmstripviewTemplate][onConfirmUploadEditor]: Upload intent Fail."

    invoke-static {v14, v15}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 622
    const/4 v0, 0x0

    return v0
.end method

.method public onControlButtonClick(Lcom/htc/album/modules/ui/widget/ControlButton;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/album/modules/ui/widget/ControlButton",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 2165
    .local p1, button:Lcom/htc/album/modules/ui/widget/ControlButton;,"Lcom/htc/album/modules/ui/widget/ControlButton<*>;"
    invoke-virtual {p1}, Lcom/htc/album/modules/ui/widget/ControlButton;->getId()I

    move-result v0

    .line 2166
    .local v0, nButtonID:I
    packed-switch v0, :pswitch_data_0

    .line 2175
    sget-object v1, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[onMenuItemSelected] Unsupported context menu operation."

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    :goto_0
    return-void

    .line 2169
    :pswitch_0
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->onConfirm()V

    goto :goto_0

    .line 2172
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->onCancel()V

    goto :goto_0

    .line 2166
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z
    .locals 1
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 632
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter "id"

    .prologue
    .line 642
    sget-object v2, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[HTCAlbum][LocalFilmstripTemplate][onCreateDialog]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const/4 v0, 0x0

    .line 656
    .local v0, dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0036

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 658
    .local v1, message:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 685
    :goto_0
    sget-object v2, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LocalFilmstripTemplate][onCreateDialog]: end"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    return-object v0

    .line 663
    :sswitch_0
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 665
    :sswitch_1
    new-instance v0, Lcom/htc/app/HtcProgressDialog;

    .end local v0           #dialog:Lcom/htc/app/HtcProgressDialog;
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    .line 666
    .restart local v0       #dialog:Lcom/htc/app/HtcProgressDialog;
    invoke-virtual {v0, v1}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 667
    new-instance v2, Lcom/htc/album/addons/UploadEditorTemplate$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorTemplate$1;-><init>(Lcom/htc/album/addons/UploadEditorTemplate;)V

    invoke-virtual {v0, v2}, Lcom/htc/app/HtcProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto :goto_0

    .line 658
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x2724 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreateFooterBar(I)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 2236
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 2237
    .local v1, context:Landroid/content/Context;
    const/4 v0, 0x0

    .line 2238
    .local v0, footerBar:Lcom/htc/album/modules/ui/widget/GalleryFooterBar;
    invoke-static {v1}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->makeFooter(Landroid/content/Context;)Lcom/htc/album/modules/ui/widget/GalleryFooterBar;

    move-result-object v0

    .line 2239
    const/4 v3, 0x5

    const v5, 0x20c01d6

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2240
    const/4 v3, 0x4

    const v5, 0x7f0b0001

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/album/modules/ui/widget/GalleryFooterBar;->addButton(Landroid/content/Context;IIII)Lcom/htc/album/modules/ui/widget/ControlButton;

    .line 2242
    return-object v0
.end method

.method public onCreateHeaderBar(I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;
    .locals 4
    .parameter "id"

    .prologue
    .line 2190
    const/4 v0, 0x0

    .line 2191
    .local v0, headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v2, v3}, Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;->makeHeader(Landroid/content/Context;I)Lcom/htc/album/modules/ui/widget/GalleryHeaderBar;

    move-result-object v0

    .end local v0           #headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    check-cast v0, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;

    .line 2195
    .restart local v0       #headerBar:Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->getSeviceLogo()I

    move-result v1

    .line 2196
    .local v1, nResID:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2197
    invoke-virtual {v0, v1}, Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;->setServiceIconResource(I)V

    .line 2201
    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/htc/album/addons/UploadEditorTemplate;->adjustHeaderBarUI(Lcom/htc/album/modules/ui/widget/UploaderHeaderBar;Z)V

    .line 2203
    return-object v0

    .line 2199
    :cond_0
    sget-object v2, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v3, "[HTCAlbum][LocalFilmstripviewTemplate][setupUploadEditorTitle]: Shouldn\'t run to here ! set Icon NG !"

    invoke-static {v2, v3}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEnter(Landroid/os/Bundle;)V
    .locals 8
    .parameter "bundle"

    .prologue
    const/4 v7, 0x0

    .line 925
    invoke-super {p0, p1}, Lcom/htc/opensense2/album/ViewTemplateBase;->onEnter(Landroid/os/Bundle;)V

    .line 929
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 931
    .local v0, activity:Landroid/app/Activity;
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    .line 933
    sget-object v4, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v5, "[onEnter]"

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/htc/opensense2/album/TemplateActivityBase;

    invoke-virtual {v4}, Lcom/htc/opensense2/album/TemplateActivityBase;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mHandler:Landroid/os/Handler;

    .line 937
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    .line 938
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    const-string v5, "UPLOAD_EDITOR_MODE"

    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 940
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundle:Landroid/os/Bundle;

    const-string v5, "SHARE_INTENT"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 942
    .local v3, share:Landroid/content/Intent;
    sget-object v4, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[HTCAlbum][LocalFilmstripviewTemplate][onEnter]: strService: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/album/AlbumUtility/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/UploadEditorTemplate;->getSupportServiceMode(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/htc/album/addons/UploadEditorTemplate;->setFeatureMode(I)V

    .line 949
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v4}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    iput-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 956
    .end local v3           #share:Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->onScreenChange()V

    .line 958
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationEnter:Landroid/view/animation/Animation;

    if-nez v4, :cond_0

    .line 959
    const v4, 0x7f04000b

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 960
    :cond_0
    iget-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationLeave:Landroid/view/animation/Animation;

    if-nez v4, :cond_1

    .line 961
    const v4, 0x7f04000c

    invoke-static {v0, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationLeave:Landroid/view/animation/Animation;

    .line 963
    :cond_1
    iget v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    if-nez v4, :cond_3

    .line 965
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 966
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v4, "photo_position"

    invoke-interface {v2, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    .line 968
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 969
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v4, "last_template"

    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->getId()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 970
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 976
    .end local v1           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .line 953
    :cond_2
    invoke-virtual {p0, v7}, Lcom/htc/album/addons/UploadEditorTemplate;->setFeatureMode(I)V

    goto :goto_0

    .line 974
    :cond_3
    iput v7, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    goto :goto_1
.end method

.method public onLeave()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 1018
    sget-object v5, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[onLeave]"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    invoke-virtual {v5}, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1022
    :try_start_0
    sget-object v5, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[onLeave] Stop UploadLoader start..."

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1024
    .local v3, start:J
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    invoke-virtual {v5}, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->cancel()V

    .line 1025
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    invoke-virtual {v5}, Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;->join()V

    .line 1026
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1027
    .local v1, end:J
    sget-object v5, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[onLeave] Stop UploadLoader end, time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v7, v1, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1033
    .end local v1           #end:J
    .end local v3           #start:J
    :cond_0
    :goto_0
    iput-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mUploadLoader:Lcom/htc/album/addons/UploadEditorTemplate$UploadLoader;

    .line 1035
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 1036
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleMain:Landroid/view/ViewGroup;

    invoke-virtual {v5, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1038
    :cond_1
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripTitle:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    .line 1039
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripTitle:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1041
    :cond_2
    iput-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationEnter:Landroid/view/animation/Animation;

    .line 1042
    iput-object v9, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAnimationLeave:Landroid/view/animation/Animation;

    .line 1044
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMenuMgr:Lcom/htc/album/helper/MenuManager;

    invoke-virtual {v5}, Lcom/htc/album/helper/MenuManager;->dismissShowingDialog()V

    .line 1046
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v5, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v5}, Lcom/htc/album/addons/FullFlimSurfaceView;->destroy()V

    .line 1048
    invoke-super {p0}, Lcom/htc/opensense2/album/ViewTemplateBase;->onLeave()V

    .line 1049
    return-void

    .line 1028
    :catch_0
    move-exception v0

    .line 1030
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 11
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 695
    iget-object v8, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v8}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 696
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v1, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 698
    .local v1, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 761
    sget-object v6, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v8, "[onMenuItemSelected] Unsupported context menu operation."

    invoke-static {v6, v8}, Lcom/htc/album/AlbumUtility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move v6, v7

    .line 764
    :cond_0
    return v6

    .line 723
    :sswitch_0
    invoke-static {v0}, Lcom/htc/album/helper/MenuManager;->launchSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 728
    :sswitch_1
    if-eqz v1, :cond_0

    .line 731
    const/4 v5, 0x0

    .line 732
    .local v5, totalChildren:I
    const/4 v2, 0x0

    .line 734
    .local v2, firstViewPos:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_2

    .line 736
    add-int v4, v2, v3

    .line 737
    .local v4, target:I
    invoke-virtual {v1, v4}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->isItemPicked(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 738
    invoke-virtual {v1, v4, v10}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->pickItem(ILandroid/view/View;)V

    .line 734
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 740
    .end local v4           #target:I
    :cond_2
    iput-boolean v7, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDeleteAll:Z

    .line 741
    iget-boolean v6, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mIsDeleteAll:Z

    invoke-direct {p0, v6}, Lcom/htc/album/addons/UploadEditorTemplate;->updatePickerCount(Z)V

    goto :goto_0

    .line 751
    .end local v2           #firstViewPos:I
    .end local v3           #i:I
    .end local v5           #totalChildren:I
    :sswitch_2
    const/4 v8, 0x3

    const/16 v9, 0x1398

    invoke-static {v0, v8, v9, v6, v10}, Lcom/htc/album/TabPluginDLNA/DMCHelper;->pickDMR(Landroid/app/Activity;IIZLjava/lang/Object;)V

    goto :goto_0

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x20c01d4 -> :sswitch_1
        0x7f0a0098 -> :sswitch_2
        0x7f0a009e -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 781
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 2142
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 789
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v1}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mCurrentOrientation:I

    .line 790
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 792
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->needRefresh()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->updateVisibleRange()V

    .line 795
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->startThumbThreads()V

    .line 797
    :cond_0
    return-void
.end method

.method public onScreenChange()V
    .locals 5

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->syncHeaderView()V

    .line 911
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v3}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 913
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 914
    .local v2, opts:Landroid/graphics/BitmapFactory$Options;
    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v3, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 915
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20801c2

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 917
    .local v1, bitmap:Landroid/graphics/Bitmap;
    return-void
.end method

.method public requestFooterBar()Z
    .locals 1

    .prologue
    .line 2230
    const/4 v0, 0x1

    return v0
.end method

.method public requestHeaderBar()Z
    .locals 1

    .prologue
    .line 2183
    const/4 v0, 0x1

    return v0
.end method

.method public setFeatureMode(I)V
    .locals 5
    .parameter "nMode"

    .prologue
    const/4 v4, 0x0

    .line 1291
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 1292
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-nez v0, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1295
    :cond_0
    iput p1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mRunningMode:I

    .line 1297
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v4}, Lcom/htc/album/modules/ui/ControlBarManager;->createHeaderBar(IZ)V

    .line 1298
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mControlBarMgr:Lcom/htc/album/modules/ui/ControlBarManager;

    const/16 v2, 0x65

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/htc/album/modules/ui/ControlBarManager;->createFooterBar(IZ)V

    .line 1303
    invoke-direct {p0, v4}, Lcom/htc/album/addons/UploadEditorTemplate;->showProgressBar(Z)V

    .line 1304
    invoke-virtual {v0}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->enterUploadEditorMode()V

    .line 1305
    invoke-direct {p0, p1}, Lcom/htc/album/addons/UploadEditorTemplate;->initUploadEditorUI(I)V

    .line 1306
    invoke-virtual {v0, p1}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->setPickerMode(I)V

    .line 1308
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1309
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->syncHeaderView()V

    .line 1310
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->ForceGalleryBeFocused()Z

    goto :goto_0
.end method

.method public syncHeaderView()V
    .locals 3

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 2033
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-nez v0, :cond_0

    .line 2045
    :goto_0
    return-void

    .line 2036
    :cond_0
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->isUploadEditorMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2038
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/htc/album/addons/UploadEditorTemplate;->setupUploadEditorTitle(Z)V

    .line 2039
    invoke-direct {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->setMaxIndicatorWidth()I

    goto :goto_0

    .line 2043
    :cond_1
    sget-object v1, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v2, "[HTCAlbum][LocalFilmstripviewTemplate][syncHeaderView]: NG !"

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unbindAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 804
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 806
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v1}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->getSelectedItemPosition()I

    move-result v1

    iput v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    .line 809
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mMainView:Landroid/view/View;

    check-cast v1, Lcom/htc/album/addons/FullFlimSurfaceView;

    invoke-virtual {v1}, Lcom/htc/album/addons/FullFlimSurfaceView;->getFullFilmView()Lcom/htc/sunny2/fullfilmview/FullFilmView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/htc/sunny2/fullfilmview/FullFilmView;->setMediaListIHT(Lcom/htc/sunny2/IMediaList;)V

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mThumbPreparator:Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;

    invoke-virtual {v1}, Lcom/htc/sunny2/widget/fullfilmview/ImageGetterPreparatorImpl;->deInit()V

    .line 814
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 815
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-nez v0, :cond_1

    .line 819
    :goto_0
    return-void

    .line 818
    :cond_1
    invoke-virtual {v0, v2}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->setAdapterListener(Lcom/htc/opensense2/album/AdapterInterface;)V

    goto :goto_0
.end method

.method public updateFirstItemUI()V
    .locals 7

    .prologue
    .line 1790
    :try_start_0
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 1792
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mBundleArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1795
    .local v0, bundle:Landroid/os/Bundle;
    const-string v5, "description"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1796
    .local v2, strDescription:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1797
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorDescription:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1800
    :cond_0
    const-string v5, "title"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1801
    .local v4, strTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 1802
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorTitleText:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1829
    :cond_1
    const-string v5, "tags_description"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1830
    .local v3, strTagButton:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 1831
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v5, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1839
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #strDescription:Ljava/lang/String;
    .end local v3           #strTagButton:Ljava/lang/String;
    .end local v4           #strTitle:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1834
    :catch_0
    move-exception v1

    .line 1837
    .local v1, e:Ljava/lang/Exception;
    sget-object v5, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    const-string v6, "[HTCAlbum][LocalFilmstripviewTemplate][UploadLoader]: try init first item description & Title ! NG !"

    invoke-static {v5, v6}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateTitleIndicator(II)V
    .locals 6
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    .line 1269
    const-string v1, ""

    .line 1270
    .local v1, indicator:Ljava/lang/String;
    if-lez p2, :cond_2

    .line 1271
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mDispMgrListener:Lcom/htc/opensense2/album/DisplayManagerInterface;

    invoke-interface {v2}, Lcom/htc/opensense2/album/DisplayManagerInterface;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1272
    .local v0, context:Landroid/content/Context;
    if-nez v0, :cond_1

    .line 1287
    .end local v0           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1274
    .restart local v0       #context:Landroid/content/Context;
    :cond_1
    const v2, 0x7f0b0098

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1277
    .end local v0           #context:Landroid/content/Context;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorTemplate;->isUploadEditorMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1279
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1280
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mEditorIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1284
    :cond_3
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripIndicator:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 1285
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mFilmstripIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateVisibleRange()V
    .locals 4

    .prologue
    .line 848
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;

    .line 849
    .local v0, adapter:Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;
    if-nez v0, :cond_0

    .line 855
    :goto_0
    return-void

    .line 852
    :cond_0
    iget v1, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    add-int/lit8 v1, v1, -0xf

    iget v2, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    iget v3, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    add-int/lit8 v3, v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/album/TabPluginDevice/LocalPhotoAdapter;->setVisibleRange(III)Z

    .line 854
    sget-object v1, Lcom/htc/album/addons/UploadEditorTemplate;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateVisibleRange] mPhotoPos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/album/addons/UploadEditorTemplate;->mPhotoPos:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/album/AlbumUtility/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
