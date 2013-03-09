.class public Lcom/htc/album/addons/UploadEditorViewManager;
.super Landroid/widget/RelativeLayout;
.source "UploadEditorViewManager.java"

# interfaces
.implements Lcom/htc/sunny2/frameworks/base/interfaces/IScreenControlHook;


# static fields
.field private static final DEBUG:Ljava/lang/String; = "KA>>> [UploadEditorViewManager]: "

.field private static final LOG_TAG:Ljava/lang/String; = null

.field public static final SOURCE_FACEBOOK:I = 0x1

.field public static final SOURCE_FLICKR:I = 0x2

.field public static final SOURCE_UKNOWN:I


# instance fields
.field private isInit:Z

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

.field private mEditTextDesc:Landroid/widget/EditText;

.field private mEditTextTitle:Landroid/widget/EditText;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMainView:Landroid/view/ViewGroup;

.field private mParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/album/addons/UploadEditorViewManager;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 47
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 48
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 49
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    .line 50
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    .line 51
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    .line 52
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 56
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 47
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 48
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 49
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    .line 50
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    .line 51
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    .line 52
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 56
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    iput v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 47
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 48
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 49
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    .line 50
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    .line 51
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    .line 52
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 54
    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 56
    iput-boolean v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/album/addons/UploadEditorViewManager;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    return-object v0
.end method

.method private setPhotoDescription(Ljava/lang/String;)V
    .locals 2
    .parameter "szText"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 455
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 458
    const/4 v0, 0x1

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v0, v1, :cond_2

    .line 460
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    const v1, 0x7f0b0054

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 466
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    new-instance v1, Lcom/htc/album/addons/UploadEditorViewManager$4;

    invoke-direct {v1, p0}, Lcom/htc/album/addons/UploadEditorViewManager$4;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 481
    :goto_1
    return-void

    .line 462
    :cond_2
    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v0, v1, :cond_1

    .line 464
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    const v1, 0x7f0b0055

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method


# virtual methods
.method public attachTo(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "viewGroup"

    .prologue
    .line 331
    iput-object p1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 332
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    new-instance v0, Lcom/htc/album/addons/UploadEditorViewManager$3;

    invoke-direct {v0, p0}, Lcom/htc/album/addons/UploadEditorViewManager$3;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 348
    return-void
.end method

.method public detach()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public forceInvalidateTagBtn()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestLayout()V

    .line 451
    :cond_0
    return-void
.end method

.method public getBundleArray()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTags(I)Ljava/util/ArrayList;
    .locals 3
    .parameter "nCurIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 196
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 197
    .local v1, bundleCurrent:Landroid/os/Bundle;
    const-string v2, "tags"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    .local v0, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    return-object v0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    .line 365
    return-void
.end method

.method public initBundleData(Ljava/util/ArrayList;)Z
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 138
    :cond_0
    const/4 v10, 0x0

    .line 192
    :goto_0
    return v10

    .line 141
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    .line 142
    const/4 v5, 0x0

    .local v5, index:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    .line 144
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;

    .line 146
    .local v1, aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    if-nez v1, :cond_2

    .line 148
    const/4 v10, 0x0

    goto :goto_0

    .line 151
    :cond_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    .line 152
    .local v7, strTitle:Ljava/lang/String;
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 153
    .local v6, strDescription:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    const/4 v10, 0x1

    iget v11, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v10, v11, :cond_4

    .line 157
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v6

    .line 162
    :goto_2
    const/4 v10, 0x1

    iget v11, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v10, v11, :cond_6

    .line 163
    const-string v7, ""

    .line 168
    :goto_3
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v3

    .line 169
    .local v3, arrayWrappTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 171
    .local v8, tag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    new-instance v9, Lcom/htc/album/TagUtils/TagInfo;

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterX()F

    move-result v12

    invoke-virtual {v8}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getCenterY()F

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/htc/album/TagUtils/TagInfo;-><init>(Ljava/lang/String;Ljava/lang/String;FF)V

    .line 172
    .local v9, tagItem:Lcom/htc/album/TagUtils/TagInfo;
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 157
    .end local v3           #arrayWrappTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v8           #tag:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v9           #tagItem:Lcom/htc/album/TagUtils/TagInfo;
    :cond_3
    const-string v6, ""

    goto :goto_2

    .line 159
    :cond_4
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_5

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v6

    :goto_5
    goto :goto_2

    :cond_5
    const-string v6, ""

    goto :goto_5

    .line 165
    :cond_6
    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v7

    :goto_6
    goto :goto_3

    :cond_7
    const-string v7, ""

    goto :goto_6

    .line 176
    .restart local v3       #arrayWrappTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, aBundle:Landroid/os/Bundle;
    const-string v10, "description"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v10, "title"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v10, "tags"

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 180
    const-string v10, "WrapperPhoto"

    invoke-virtual {v0, v10, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 182
    iget-object v10, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v10, Lcom/htc/album/addons/UploadEditorViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KA>>> [UploadEditorViewManager]: Description: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    sget-object v10, Lcom/htc/album/addons/UploadEditorViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KA>>> [UploadEditorViewManager]: Title: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v10, Lcom/htc/album/addons/UploadEditorViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KA>>> [UploadEditorViewManager]: Tags: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 190
    .end local v0           #aBundle:Landroid/os/Bundle;
    .end local v1           #aPhoto:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;
    .end local v2           #arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    .end local v3           #arrayWrappTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #strDescription:Ljava/lang/String;
    .end local v7           #strTitle:Ljava/lang/String;
    :cond_9
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/htc/album/addons/UploadEditorViewManager;->isInit:Z

    .line 192
    const/4 v10, 0x1

    goto/16 :goto_0
.end method

.method public initialize(Landroid/app/Activity;I)V
    .locals 6
    .parameter "activity"
    .parameter "nSource"

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 90
    const-class v1, Lcom/htc/album/addons/UploadEditorViewManager;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setId(I)V

    .line 92
    const-string v1, "input_method"

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 95
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 97
    iput p2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    .line 98
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0086

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    .line 99
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagTitle(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 100
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 101
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$1;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$1;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 109
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 110
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0087

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    .line 111
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagDescription(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 112
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setGravity(I)V

    .line 113
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    new-instance v2, Lcom/htc/album/addons/UploadEditorViewManager$2;

    invoke-direct {v2, p0}, Lcom/htc/album/addons/UploadEditorViewManager$2;-><init>(Lcom/htc/album/addons/UploadEditorViewManager;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 121
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 123
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    const v2, 0x7f0a0088

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    .line 124
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->setSingleLine()V

    .line 125
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 126
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/album/Customizable/CustSkinnable;->getDrawable_TagButton(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 127
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusable(Z)V

    .line 128
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setFocusableInTouchMode(Z)V

    .line 129
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mParams:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->relayout()V

    .line 133
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mRootView:Landroid/view/ViewGroup;

    .line 76
    iput-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mMainView:Landroid/view/ViewGroup;

    .line 77
    return-void
.end method

.method public onEditTextFocusChange(Landroid/view/View;Z)V
    .locals 3
    .parameter "view"
    .parameter "onFocus"

    .prologue
    .line 80
    if-nez p2, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 87
    :cond_0
    return-void
.end method

.method public prepareEditorView(ILcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 8
    .parameter "nCurIndex"
    .parameter "aPhoto"

    .prologue
    const/4 v7, 0x1

    .line 290
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    if-nez p2, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    iget v5, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v7, v5, :cond_2

    const/4 v5, 0x2

    iget v6, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v5, v6, :cond_0

    .line 299
    :cond_2
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 300
    .local v1, bundleCurrent:Landroid/os/Bundle;
    invoke-virtual {p2}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v2

    .line 305
    .local v2, isVideo:Z
    iget v5, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v7, v5, :cond_3

    if-nez v2, :cond_3

    .line 306
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 317
    :goto_1
    const-string v5, "description"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, strDescription:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    .line 323
    const-string v5, "tags"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 324
    .local v0, arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    invoke-virtual {p0, v0, v2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    goto :goto_0

    .line 309
    .end local v0           #arrayTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    .end local v3           #strDescription:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setVisibility(I)V

    .line 310
    const-string v5, "title"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 311
    .local v4, strTitle:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public prepareEditorView(Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;)V
    .locals 3
    .parameter "aPhoto"

    .prologue
    const/4 v2, 0x1

    .line 259
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-eq v0, v1, :cond_0

    .line 286
    :goto_0
    return-void

    .line 265
    :cond_0
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 277
    :goto_1
    iget v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mSource:I

    if-ne v2, v0, :cond_2

    .line 278
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    .line 285
    :goto_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->isPlayable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getTags()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 280
    :cond_2
    invoke-virtual {p1}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperPhoto;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setPhotoDescription(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public relayout()V
    .locals 4

    .prologue
    .line 368
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 369
    .local v1, resource:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 371
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 372
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f080037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 375
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 378
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 379
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    const v3, 0x7f08002b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setMaxHeight(I)V

    .line 382
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    if-eqz v2, :cond_2

    .line 384
    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 385
    .restart local v0       #lp:Landroid/widget/RelativeLayout$LayoutParams;
    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 387
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method public savePreviousEditorView(I)V
    .locals 3
    .parameter "nCurIndex"

    .prologue
    .line 212
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 217
    .local v0, bundleCurrent:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 219
    const-string v1, "title"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextTitle:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_2
    iget-object v1, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 224
    const-string v1, "description"

    iget-object v2, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mEditTextDesc:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTagButtonListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "clickListener"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setTagButtonText(Ljava/util/ArrayList;Z)V
    .locals 5
    .parameter
    .parameter "bIsVideo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/album/TagUtils/TagInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 419
    .local p1, tags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    if-eqz p2, :cond_0

    .line 420
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 446
    :goto_0
    return-void

    .line 423
    :cond_0
    const-string v2, ""

    .line 424
    .local v2, szButtonText:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, aFace:Lcom/htc/album/TagUtils/TagInfo;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 429
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    check-cast v0, Lcom/htc/album/TagUtils/TagInfo;

    .line 430
    .restart local v0       #aFace:Lcom/htc/album/TagUtils/TagInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/htc/album/TagUtils/TagInfo;->mszTagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    .line 437
    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .end local v1           #nIndex:I
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 438
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    const v4, 0x7f0b0056

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 442
    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 444
    invoke-virtual {p0}, Lcom/htc/album/addons/UploadEditorViewManager;->forceInvalidateTagBtn()V

    goto :goto_0

    .line 434
    .restart local v0       #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .restart local v1       #nIndex:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    .end local v0           #aFace:Lcom/htc/album/TagUtils/TagInfo;
    .end local v1           #nIndex:I
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public setTagButtonText(ZLjava/util/ArrayList;)V
    .locals 5
    .parameter "bIsVideo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 390
    .local p2, faceTags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;>;"
    if-eqz p1, :cond_0

    .line 391
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 416
    :goto_0
    return-void

    .line 394
    :cond_0
    const-string v2, ""

    .line 395
    .local v2, szButtonText:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    const/4 v1, 0x0

    .local v1, nIndex:I
    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    .line 400
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    check-cast v0, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;

    .line 401
    .restart local v0       #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 402
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    if-gt v3, v4, :cond_3

    .line 408
    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v1           #nIndex:I
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 409
    :cond_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    const v4, 0x7f0b0056

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 413
    :goto_2
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 405
    .restart local v0       #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .restart local v1       #nIndex:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 411
    .end local v0           #aFace:Lcom/htc/opensense2/album/SocialNetworkManager/WrapperFaceTag;
    .end local v1           #nIndex:I
    :cond_4
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mButtonTag:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public show()V
    .locals 1

    .prologue
    .line 360
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/album/addons/UploadEditorViewManager;->setVisibility(I)V

    .line 361
    return-void
.end method

.method public updateTags(IZLandroid/content/Intent;)V
    .locals 6
    .parameter "nCurIndex"
    .parameter "isVideo"
    .parameter "intent"

    .prologue
    .line 230
    if-nez p3, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const/4 v1, 0x0

    .line 233
    .local v1, bundleTagView:Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 235
    const/4 v2, 0x0

    .line 237
    .local v2, tagsArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/album/TagUtils/TagInfo;>;"
    if-eqz v1, :cond_2

    .line 238
    const-string v3, "tags"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 240
    :cond_2
    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, bundleCur:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/htc/album/addons/UploadEditorViewManager;->mBundleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleCur:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 245
    .restart local v0       #bundleCur:Landroid/os/Bundle;
    const-string v3, "tags"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 248
    invoke-virtual {p0, v2, p2}, Lcom/htc/album/addons/UploadEditorViewManager;->setTagButtonText(Ljava/util/ArrayList;Z)V

    .line 250
    sget-object v3, Lcom/htc/album/addons/UploadEditorViewManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "KA>>> [UploadEditorViewManager]: TAG_RESULT_OK, Get Tag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/opensense2/album/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
