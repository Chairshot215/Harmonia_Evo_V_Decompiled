.class public Lcom/android/htccontacts/group/SendGroupMessageHint;
.super Landroid/app/Activity;
.source "SendGroupMessageHint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final HANDLER_EVENT_REFRESH_NALELIST:I = 0x11

.field public static final LAUNCH_KEY_SENDMAIL:Ljava/lang/String; = "mail"

.field public static final LAUNCH_KEY_SENDMESSAGE:Ljava/lang/String; = "message"

.field static final QUERY_TOKEN:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;

.field mHintView:Landroid/widget/TextView;

.field mNameIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNameListView:Landroid/widget/TextView;

.field mQueryHandler:Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const-string v0, "HtcSendGroupMessageHint"

    iput-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/android/htccontacts/group/SendGroupMessageHint$1;

    invoke-direct {v0, p0}, Lcom/android/htccontacts/group/SendGroupMessageHint$1;-><init>(Lcom/android/htccontacts/group/SendGroupMessageHint;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method static synthetic access$000(Lcom/android/htccontacts/group/SendGroupMessageHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->doOk()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/htccontacts/group/SendGroupMessageHint;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->doCancel()V

    return-void
.end method

.method private doCancel()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->setResult(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->finish()V

    .line 115
    return-void
.end method

.method private doOk()V
    .locals 1

    .prologue
    .line 118
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->setResult(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->finish()V

    .line 120
    return-void
.end method

.method private resolveIntent()V
    .locals 7

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 77
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "caller"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, caller:Ljava/lang/String;
    const v2, 0x7f0a025f

    .line 79
    .local v2, hintResTextId:I
    const v4, 0x7f0a010e

    .line 80
    .local v4, titleResTextId:I
    if-eqz v1, :cond_0

    const-string v5, "message"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 81
    :cond_0
    const v2, 0x7f0a025f

    .line 87
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/htccontacts/group/SendGroupMessageHint;->setTitleBar(I)V

    .line 89
    iget-object v5, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const-string v5, "namelist"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mNameIdList:Ljava/util/ArrayList;

    .line 92
    const v5, 0x7f07002b

    invoke-virtual {p0, v5}, Lcom/android/htccontacts/group/SendGroupMessageHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;

    .line 93
    .local v0, buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton1View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    new-instance v6, Lcom/android/htccontacts/group/SendGroupMessageHint$2;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/group/SendGroupMessageHint$2;-><init>(Lcom/android/htccontacts/group/SendGroupMessageHint;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {v0}, Lcom/android/htccontacts/widget/HtcButtonFrameLayout;->getButton2View()Lcom/htc/widget/HtcFooterButton;

    move-result-object v5

    new-instance v6, Lcom/android/htccontacts/group/SendGroupMessageHint$3;

    invoke-direct {v6, p0}, Lcom/android/htccontacts/group/SendGroupMessageHint$3;-><init>(Lcom/android/htccontacts/group/SendGroupMessageHint;)V

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-direct {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->startQuery()V

    .line 110
    return-void

    .line 83
    .end local v0           #buttonLayout:Lcom/android/htccontacts/widget/HtcButtonFrameLayout;
    :cond_1
    const v2, 0x7f0a0260

    .line 84
    const v4, 0x7f0a010f

    goto :goto_0
.end method

.method private startQuery()V
    .locals 12

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 124
    .local v8, buf:Ljava/lang/StringBuffer;
    const-string v0, "_id IN ( "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    iget-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mNameIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 126
    .local v11, size:I
    const/4 v10, 0x0

    .local v10, index:I
    :goto_0
    if-ge v10, v11, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mNameIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 128
    .local v9, id:I
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 129
    add-int/lit8 v0, v11, -0x1

    if-ge v10, v0, :cond_0

    .line 130
    const-string v0, " , "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 133
    .end local v9           #id:I
    :cond_1
    const-string v0, " )"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mQueryHandler:Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;->cancelOperation(I)V

    .line 138
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 139
    .local v3, queryUri:Landroid/net/Uri;
    const-string v0, "simple/list"

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 141
    iget-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mQueryHandler:Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v6, "display_name"

    aput-object v6, v4, v1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->requestWindowFeature(I)Z

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->requestWindowFeature(I)Z

    .line 43
    const v0, 0x7f03006f

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->setContentView(I)V

    .line 44
    const v0, 0x7f07006f

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mHintView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f070101

    invoke-virtual {p0, v0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mNameListView:Landroid/widget/TextView;

    .line 46
    new-instance v0, Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;

    invoke-virtual {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/htccontacts/group/SendGroupMessageHint;->mQueryHandler:Lcom/android/htccontacts/group/SendGroupMessageHint$QueryHandler;

    .line 47
    invoke-direct {p0}, Lcom/android/htccontacts/group/SendGroupMessageHint;->resolveIntent()V

    .line 49
    return-void
.end method

.method protected setTitleBar(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 69
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/htccontacts/group/SendGroupMessageHint;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/htccontacts/widget/title/GenericHeaderBar;

    .line 70
    .local v0, mHeaderBar:Lcom/android/htccontacts/widget/title/GenericHeaderBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->buildHeaderBar(I)V

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/htccontacts/widget/title/GenericHeaderBar;->setHeaderText(I)V

    .line 72
    return-void
.end method
