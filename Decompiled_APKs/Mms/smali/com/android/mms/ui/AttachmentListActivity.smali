.class public Lcom/android/mms/ui/AttachmentListActivity;
.super Lcom/htc/app/HtcListActivity;
.source "AttachmentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AttachmentListActivity"


# instance fields
.field private checkArray:[Z

.field private mCheckOk:Landroid/widget/Button;

.field private mContent:Landroid/content/Context;

.field private mList:Lcom/htc/widget/HtcListView;

.field private mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

.field private mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPartsListAdapter:Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mUri:Landroid/net/Uri;

.field private slidenum:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/htc/app/HtcListActivity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 71
    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mParts:Ljava/util/ArrayList;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AttachmentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mContent:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/ui/AttachmentListActivity;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/mms/ui/AttachmentListActivity;->mContent:Landroid/content/Context;

    return-object p1
.end method

.method private initAttachmentList()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .local v1, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v2}, Lcom/android/mms/msg/body/MixedMessageBody;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/msg/body/MixedMessageBody;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentListActivity;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    .line 175
    new-instance v2, Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListActivity;->mMessageBody:Lcom/android/mms/msg/body/MixedMessageBody;

    invoke-virtual {v3}, Lcom/android/mms/msg/body/MixedMessageBody;->getMediaList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, p0, p0, v3}, Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;-><init>(Lcom/android/mms/ui/AttachmentListActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/android/mms/ui/AttachmentListActivity;->mPartsListAdapter:Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;

    .line 176
    iget-object v2, p0, Lcom/android/mms/ui/AttachmentListActivity;->mList:Lcom/htc/widget/HtcListView;

    iget-object v3, p0, Lcom/android/mms/ui/AttachmentListActivity;->mPartsListAdapter:Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    .end local v1           #pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v2, "AttachmentListActivity"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initCommonResources()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 81
    sget-object v4, Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;->HEADER_SHORT:Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;

    const v5, 0x7f0902f1

    const/4 v6, -0x1

    invoke-static {p0, v4, v5, v6}, Lcom/android/mms/util/CommonActivityLayout;->createSimpleTextHeaderActivityLayout(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderHeight;II)Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getHeaderBarComposer()Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;

    move-result-object v2

    .line 84
    .local v2, header:Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;
    new-instance v1, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;

    invoke-direct {v1}, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;-><init>()V

    .line 85
    .local v1, footer:Lcom/android/mms/util/CommonActivityLayout$FooterComposer;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    new-instance v5, Lcom/android/mms/util/CommonActivityLayout$FootButton;

    const v6, 0x7f090037

    invoke-direct {v5, v6}, Lcom/android/mms/util/CommonActivityLayout$FootButton;-><init>(I)V

    aput-object v5, v4, v7

    iput-object v4, v1, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    .line 89
    new-instance v0, Lcom/android/mms/util/CommonActivityLayout;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/mms/util/CommonActivityLayout;-><init>(Landroid/content/Context;Lcom/android/mms/util/CommonActivityLayout$HeaderBarComposer;Lcom/android/mms/util/CommonActivityLayout$FooterComposer;)V

    .line 90
    .local v0, activityComposer:Lcom/android/mms/util/CommonActivityLayout;
    invoke-virtual {v0}, Lcom/android/mms/util/CommonActivityLayout;->getController()Lcom/android/mms/util/CommonActivityLayout$LayoutController;

    move-result-object v3

    .line 91
    .local v3, mLayoutController:Lcom/android/mms/util/CommonActivityLayout$LayoutController;
    invoke-virtual {v3}, Lcom/android/mms/util/CommonActivityLayout$LayoutController;->getActivityContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/AttachmentListActivity;->setContentView(Landroid/view/View;)V

    .line 92
    iget-object v4, v1, Lcom/android/mms/util/CommonActivityLayout$FooterComposer;->mChild:[Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/android/mms/util/CommonActivityLayout$BarMemberBase;->getView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/mms/ui/AttachmentListActivity;->mCheckOk:Landroid/widget/Button;

    .line 93
    return-void
.end method


# virtual methods
.method public initButton()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 141
    invoke-static {}, Lcom/android/mms/MmsApp;->isSenseLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mCheckOk:Landroid/widget/Button;

    const v1, 0x7f02000b

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mCheckOk:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setFocusable(Z)V

    .line 145
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mCheckOk:Landroid/widget/Button;

    new-instance v1, Lcom/android/mms/ui/AttachmentListActivity$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AttachmentListActivity$1;-><init>(Lcom/android/mms/ui/AttachmentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 134
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 138
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/htc/app/HtcListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/AttachmentListActivity;->requestWindowFeature(I)Z

    .line 99
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentListActivity;->initCommonResources()V

    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getListView()Lcom/htc/widget/HtcListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentListActivity;->mList:Lcom/htc/widget/HtcListView;

    .line 103
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListActivity;->mList:Lcom/htc/widget/HtcListView;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->setRoundedCorner(Landroid/view/View;)V

    .line 105
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListActivity;->mList:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFillEmpty(Z)V

    .line 106
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/AttachmentListActivity;->mUri:Landroid/net/Uri;

    .line 108
    iget-object v1, p0, Lcom/android/mms/ui/AttachmentListActivity;->mUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 109
    const-string v1, "AttachmentListActivity"

    const-string v2, "Cannot startup activity, null Uri."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->finish()V

    .line 129
    :goto_0
    return-void

    .line 115
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/AttachmentListActivity;->initAttachmentList()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->initButton()V

    .line 123
    invoke-static {}, Lcom/android/mms/MmsApp;->isSense_3_0()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/mms/ui/MessageUtils$SkinUtil;->getWindowBackgroundRes(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "AttachmentListActivity"

    const-string v2, "Failed to initialize the slide-list."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->finish()V

    goto :goto_1

    .line 128
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/AttachmentListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onDestroy()V

    .line 162
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/htc/app/HtcListActivity;->onPause()V

    .line 155
    iget-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mPartsListAdapter:Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/AttachmentListActivity;->mPartsListAdapter:Lcom/android/mms/ui/AttachmentListActivity$PartsListAdapter;

    .line 157
    :cond_0
    return-void
.end method
