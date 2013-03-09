.class public Lcom/htc/android/mail/ManageRecipient;
.super Landroid/app/Activity;
.source "ManageRecipient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;,
        Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;,
        Lcom/htc/android/mail/ManageRecipient$ItemClick;,
        Lcom/htc/android/mail/ManageRecipient$Btn3;,
        Lcom/htc/android/mail/ManageRecipient$Btn2;,
        Lcom/htc/android/mail/ManageRecipient$Btn1;,
        Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;,
        Lcom/htc/android/mail/ManageRecipient$ViewHolder;,
        Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ManageRecipient"


# instance fields
.field private final BCC:I

.field private final CC:I

.field private final DELETE:I

.field private final MENU_SELECT_ALL:I

.field private final MENU_UNSELECT_ALL:I

.field private final TO:I

.field private adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

.field private bccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field private btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

.field private ccList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field private checkedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contentResolver:Landroid/content/ContentResolver;

.field private headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

.field private inflater:Landroid/view/LayoutInflater;

.field private listView:Lcom/htc/widget/HtcListView;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mLoadFinish:Z

.field private myHandler:Landroid/os/Handler;

.field private status:I

.field private toList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/android/mail/ManageRecipient;->DELETE:I

    .line 55
    iput v1, p0, Lcom/htc/android/mail/ManageRecipient;->TO:I

    .line 56
    iput v2, p0, Lcom/htc/android/mail/ManageRecipient;->CC:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/android/mail/ManageRecipient;->BCC:I

    .line 58
    iput v1, p0, Lcom/htc/android/mail/ManageRecipient;->MENU_SELECT_ALL:I

    .line 59
    iput v2, p0, Lcom/htc/android/mail/ManageRecipient;->MENU_UNSELECT_ALL:I

    .line 66
    iput v1, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    .line 69
    iput-boolean v1, p0, Lcom/htc/android/mail/ManageRecipient;->mLoadFinish:Z

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->myHandler:Landroid/os/Handler;

    .line 72
    invoke-static {}, Lcom/htc/android/mail/ManageRecipient$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->mBackgroundHandler:Landroid/os/Handler;

    .line 1001
    return-void
.end method

.method static synthetic access$1000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/android/mail/ManageRecipient;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/htc/android/mail/ManageRecipient;->move(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/htc/android/mail/ManageRecipient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient;->updateCmdBar()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/android/mail/ManageRecipient;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient;->remove(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/android/mail/ManageRecipient;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient;->getReceiverList()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/android/mail/ManageRecipient;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/android/mail/ManageRecipient;->fetchPhoto(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/htc/android/mail/ManageRecipient;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/htc/android/mail/ManageRecipient;->mLoadFinish:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->listView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/android/mail/ManageRecipient;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->inflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/android/mail/ManageRecipient;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;)Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/android/mail/ManageRecipient;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    return v0
.end method

.method static synthetic access$702(Lcom/htc/android/mail/ManageRecipient;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    return p1
.end method

.method static synthetic access$800(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/android/mail/ManageRecipient;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private chkAll()V
    .locals 3

    .prologue
    .line 163
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 164
    iget v1, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    if-nez v1, :cond_0

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    .end local v0           #i:I
    :cond_0
    iget v1, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 169
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 173
    .end local v0           #i:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 174
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 178
    :cond_2
    return-void
.end method

.method private closeCursorInBackground(Landroid/database/Cursor;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 1032
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    move-object v0, p1

    .line 1034
    .local v0, fCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v2, Lcom/htc/android/mail/ManageRecipient$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/ManageRecipient$1;-><init>(Lcom/htc/android/mail/ManageRecipient;Landroid/database/Cursor;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private customize(Lcom/htc/android/mail/ReceiverList;)Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    .locals 3
    .parameter "tmp"

    .prologue
    const/4 v1, 0x0

    .line 860
    if-nez p1, :cond_0

    move-object v0, v1

    .line 874
    :goto_0
    return-object v0

    .line 862
    :cond_0
    new-instance v0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    invoke-direct {v0, p0, v1}, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;-><init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V

    .line 864
    .local v0, rList:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    iget-wide v1, p1, Lcom/htc/android/mail/ReceiverList;->id:J

    iput-wide v1, v0, Lcom/htc/android/mail/ReceiverList;->id:J

    .line 865
    iget-wide v1, p1, Lcom/htc/android/mail/ReceiverList;->contactId:J

    iput-wide v1, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 866
    iget-wide v1, p1, Lcom/htc/android/mail/ReceiverList;->methodId:J

    iput-wide v1, v0, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 867
    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    .line 868
    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 869
    iget v1, p1, Lcom/htc/android/mail/ReceiverList;->group:I

    iput v1, v0, Lcom/htc/android/mail/ReceiverList;->group:I

    .line 870
    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    iput-object v1, v0, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    .line 871
    iget v1, p1, Lcom/htc/android/mail/ReceiverList;->width:I

    iput v1, v0, Lcom/htc/android/mail/ReceiverList;->width:I

    .line 872
    iget-boolean v1, p1, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    iput-boolean v1, v0, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    goto :goto_0
.end method

.method private customizeList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ReceiverList;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 880
    .local p1, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ReceiverList;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 888
    :cond_0
    return-object v2

    .line 882
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v2, rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ReceiverList;

    .line 885
    .local v1, r:Lcom/htc/android/mail/ReceiverList;
    invoke-direct {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->customize(Lcom/htc/android/mail/ReceiverList;)Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private deCustomize(Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;)Lcom/htc/android/mail/ReceiverList;
    .locals 3
    .parameter "tmp"

    .prologue
    .line 894
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 908
    :goto_0
    return-object v0

    .line 896
    :cond_0
    new-instance v0, Lcom/htc/android/mail/ReceiverList;

    invoke-direct {v0}, Lcom/htc/android/mail/ReceiverList;-><init>()V

    .line 898
    .local v0, rList:Lcom/htc/android/mail/ReceiverList;
    iget-wide v1, p1, Lcom/htc/android/mail/ReceiverList;->id:J

    iput-wide v1, v0, Lcom/htc/android/mail/ReceiverList;->id:J

    .line 899
    iget-wide v1, p1, Lcom/htc/android/mail/ReceiverList;->contactId:J

    iput-wide v1, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    .line 900
    iget-wide v1, p1, Lcom/htc/android/mail/ReceiverList;->methodId:J

    iput-wide v1, v0, Lcom/htc/android/mail/ReceiverList;->methodId:J

    .line 901
    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/ReceiverList;->addr:Ljava/lang/String;

    .line 902
    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/android/mail/ReceiverList;->name:Ljava/lang/String;

    .line 903
    iget v1, p1, Lcom/htc/android/mail/ReceiverList;->group:I

    iput v1, v0, Lcom/htc/android/mail/ReceiverList;->group:I

    .line 904
    iget-object v1, p1, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    iput-object v1, v0, Lcom/htc/android/mail/ReceiverList;->view:Landroid/view/View;

    .line 905
    iget v1, p1, Lcom/htc/android/mail/ReceiverList;->width:I

    iput v1, v0, Lcom/htc/android/mail/ReceiverList;->width:I

    .line 906
    iget-boolean v1, p1, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    iput-boolean v1, v0, Lcom/htc/android/mail/ReceiverList;->haveDisplayName:Z

    goto :goto_0
.end method

.method private deCustomizeList(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/android/mail/ReceiverList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 914
    .local p1, tmp:Ljava/util/List;,"Ljava/util/List<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    if-nez p1, :cond_1

    const/4 v2, 0x0

    .line 922
    :cond_0
    return-object v2

    .line 916
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v2, rList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ReceiverList;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 919
    .local v1, r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    invoke-direct {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->deCustomize(Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;)Lcom/htc/android/mail/ReceiverList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private fetchPhoto(Landroid/content/Context;)V
    .locals 12
    .parameter "ctx"

    .prologue
    .line 199
    const/4 v8, 0x0

    .line 200
    .local v8, cursor:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->contentResolver:Landroid/content/ContentResolver;

    .line 201
    const/4 v6, 0x0

    .line 204
    .local v6, bitmap:Landroid/graphics/Bitmap;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .local v7, contactIds:Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 206
    .local v3, where:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_1

    .line 207
    if-nez v9, :cond_0

    .line 208
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    iget-wide v0, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 206
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    iget-wide v4, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 213
    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 214
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "ManageRecipient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query toList where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 218
    if-eqz v8, :cond_5

    .line 219
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "ManageRecipient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "to cursor size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 222
    .local v11, r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, v11, Lcom/htc/android/mail/ReceiverList;->contactId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 223
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 227
    if-eqz v6, :cond_4

    .line 228
    iput-object v6, v11, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;->softRef:Landroid/graphics/Bitmap;

    .line 229
    const/4 v6, 0x0

    goto :goto_2

    .line 235
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    :cond_5
    invoke-direct {p0, v8}, Lcom/htc/android/mail/ManageRecipient;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 238
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 239
    const/4 v9, 0x0

    :goto_3
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_7

    .line 240
    if-nez v9, :cond_6

    .line 241
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    iget-wide v0, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 243
    :cond_6
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    iget-wide v4, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 246
    :cond_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 247
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_8

    const-string v0, "ManageRecipient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query ccList where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_8
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 251
    if-eqz v8, :cond_b

    .line 252
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ManageRecipient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cc cursor size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_9
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 254
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_a
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 255
    .restart local v11       #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, v11, Lcom/htc/android/mail/ReceiverList;->contactId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_a

    .line 256
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 260
    if-eqz v6, :cond_a

    .line 261
    iput-object v6, v11, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;->softRef:Landroid/graphics/Bitmap;

    .line 262
    const/4 v6, 0x0

    goto :goto_5

    .line 268
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    :cond_b
    invoke-direct {p0, v8}, Lcom/htc/android/mail/ManageRecipient;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 271
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 272
    const/4 v9, 0x0

    :goto_6
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_d

    .line 273
    if-nez v9, :cond_c

    .line 274
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    iget-wide v0, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 272
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 276
    :cond_c
    const-string v0, ","

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    iget-wide v4, v0, Lcom/htc/android/mail/ReceiverList;->contactId:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 279
    :cond_d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "_id in (%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 280
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_e

    const-string v0, "ManageRecipient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query bccList where = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->contentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "photo_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 284
    if-eqz v8, :cond_11

    .line 285
    sget-boolean v0, Lcom/htc/android/mail/Mail;->MAIL_DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "ManageRecipient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bcc cursor size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/android/mail/ll;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_f
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 287
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 288
    .restart local v11       #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iget-wide v4, v11, Lcom/htc/android/mail/ReceiverList;->contactId:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_10

    .line 289
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadThumbnail(JLandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 293
    if-eqz v6, :cond_10

    .line 294
    iput-object v6, v11, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;->softRef:Landroid/graphics/Bitmap;

    .line 295
    const/4 v6, 0x0

    goto :goto_8

    .line 301
    .end local v10           #i$:Ljava/util/Iterator;
    .end local v11           #r:Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    :cond_11
    invoke-direct {p0, v8}, Lcom/htc/android/mail/ManageRecipient;->closeCursorInBackground(Landroid/database/Cursor;)V

    .line 302
    return-void
.end method

.method private getReceiverList()V
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 334
    .local v0, it:Landroid/content/Intent;
    const-string v1, "to"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->customizeList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    .line 336
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 337
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    .line 339
    :cond_0
    const-string v1, "cc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->customizeList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    .line 341
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 342
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    .line 344
    :cond_1
    const-string v1, "bcc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->customizeList(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    .line 346
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    .line 348
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/android/mail/ManageRecipient;->mLoadFinish:Z

    .line 349
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    const v3, 0x7f0b000a

    const/4 v4, 0x0

    .line 306
    const v1, 0x7f09011a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    .line 308
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->headerBar:Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/TextMailHeaderBar1_1;->setLeftText(Ljava/lang/String;)V

    .line 310
    const v1, 0x7f09006f

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/android/mail/widget/MailFooterBar3Btn;

    .line 312
    .local v0, footerBar:Lcom/htc/android/mail/widget/MailFooterBar3Btn;
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->getLeftButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 313
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 314
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    new-instance v2, Lcom/htc/android/mail/ManageRecipient$Btn1;

    invoke-direct {v2, p0, v4}, Lcom/htc/android/mail/ManageRecipient$Btn1;-><init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->getMiddleButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 317
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    new-instance v2, Lcom/htc/android/mail/ManageRecipient$Btn2;

    invoke-direct {v2, p0, v4}, Lcom/htc/android/mail/ManageRecipient$Btn2;-><init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    invoke-virtual {v0}, Lcom/htc/android/mail/widget/MailFooterBar3Btn;->getRightButton()Lcom/htc/android/mail/widget/MailFooterBarButton;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    .line 321
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    new-instance v2, Lcom/htc/android/mail/ManageRecipient$Btn3;

    invoke-direct {v2, p0, v4}, Lcom/htc/android/mail/ManageRecipient$Btn3;-><init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/htc/android/mail/ManageRecipient;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListView;

    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->listView:Lcom/htc/widget/HtcListView;

    .line 325
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->listView:Lcom/htc/widget/HtcListView;

    new-instance v2, Lcom/htc/android/mail/ManageRecipient$ItemClick;

    invoke-direct {v2, p0, v4}, Lcom/htc/android/mail/ManageRecipient$ItemClick;-><init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient$1;)V

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->listView:Lcom/htc/widget/HtcListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 328
    return-void
.end method

.method private move(II)V
    .locals 12
    .parameter "f"
    .parameter "t"

    .prologue
    .line 784
    if-nez p1, :cond_0

    .line 785
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    .line 791
    .local v1, from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    .line 793
    .local v5, tmp:[Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    const/4 v8, 0x0

    .local v8, u:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 794
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;

    aput-object v9, v5, v8

    .line 793
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 786
    .end local v1           #from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    .end local v5           #tmp:[Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    .end local v8           #u:I
    :cond_0
    const/4 v9, 0x1

    if-ne p1, v9, :cond_1

    .line 787
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    .restart local v1       #from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    goto :goto_0

    .line 789
    .end local v1           #from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    :cond_1
    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    .restart local v1       #from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    goto :goto_0

    .line 797
    .restart local v5       #tmp:[Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;
    .restart local v8       #u:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f0b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 799
    .local v4, plural:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 800
    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0001

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 803
    :cond_3
    const/4 v9, -0x1

    if-ne p2, v9, :cond_5

    .line 804
    const/4 v6, 0x0

    .line 805
    .local v6, to:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, des:Ljava/lang/String;
    :goto_2
    iget-object v9, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 823
    .local v3, m:I
    const/4 v9, -0x1

    if-eq p2, v9, :cond_4

    .line 824
    aget-object v9, v5, v3

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    :cond_4
    const/4 v9, 0x0

    aput-object v9, v5, v3

    goto :goto_3

    .line 807
    .end local v0           #des:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #m:I
    .end local v6           #to:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    :cond_5
    if-nez p2, :cond_6

    .line 808
    iget-object v6, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    .line 809
    .restart local v6       #to:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #des:Ljava/lang/String;
    goto :goto_2

    .line 811
    .end local v0           #des:Ljava/lang/String;
    .end local v6           #to:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    :cond_6
    const/4 v9, 0x1

    if-ne p2, v9, :cond_7

    .line 812
    iget-object v6, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    .line 813
    .restart local v6       #to:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0006

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #des:Ljava/lang/String;
    goto/16 :goto_2

    .line 816
    .end local v0           #des:Ljava/lang/String;
    .end local v6           #to:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    :cond_7
    iget-object v6, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    .line 817
    .restart local v6       #to:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0007

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #des:Ljava/lang/String;
    goto/16 :goto_2

    .line 830
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .restart local v1       #from:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/android/mail/ManageRecipient$ManageReceiverList;>;"
    const/4 v8, 0x0

    :goto_4
    array-length v9, v5

    if-ge v8, v9, :cond_a

    .line 834
    aget-object v9, v5, v8

    if-eqz v9, :cond_9

    .line 835
    aget-object v9, v5, v8

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 839
    :cond_a
    if-nez p1, :cond_b

    .line 840
    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    .line 846
    :goto_5
    const/4 v9, 0x0

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 848
    .local v7, toast:Landroid/widget/Toast;
    const/16 v9, 0x11

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v9, v10, v11}, Landroid/widget/Toast;->setGravity(III)V

    .line 850
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    .line 851
    const/4 v5, 0x0

    .line 852
    const/4 v1, 0x0

    .line 854
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 856
    return-void

    .line 841
    .end local v7           #toast:Landroid/widget/Toast;
    :cond_b
    const/4 v9, 0x1

    if-ne p1, v9, :cond_c

    .line 842
    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    goto :goto_5

    .line 844
    :cond_c
    iput-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    goto :goto_5
.end method

.method private remove(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 768
    const/4 v0, 0x0

    .line 769
    .local v0, c:I
    iget-object v3, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 770
    .local v1, i:I
    if-ne v1, p1, :cond_1

    .line 776
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 778
    return-void

    .line 773
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private unchkAll()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 182
    return-void
.end method

.method private updateCmdBar()V
    .locals 6

    .prologue
    const v5, 0x7f0b0004

    const v4, 0x7f0b0003

    const v3, 0x7f0b0002

    const v2, 0x7f0b0008

    .line 746
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 749
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 750
    :cond_1
    iget v0, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    if-nez v0, :cond_2

    .line 751
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 754
    :cond_2
    iget v0, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 755
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 758
    :cond_3
    iget v0, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 759
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn1:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn2:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->btn3:Lcom/htc/android/mail/widget/MailFooterBarButton;

    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/widget/MailFooterBarButton;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 186
    const-string v0, "ManageRecipient"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 189
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->inflater:Landroid/view/LayoutInflater;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    .line 191
    const v0, 0x7f030030

    invoke-virtual {p0, v0}, Lcom/htc/android/mail/ManageRecipient;->setContentView(I)V

    .line 192
    invoke-virtual {p0}, Lcom/htc/android/mail/ManageRecipient;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x20806a9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 193
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient;->initUI()V

    .line 194
    new-instance v0, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->myHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;-><init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient;Landroid/os/Handler;I)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 124
    const v0, 0x7f0b009c

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 126
    const/4 v0, 0x1

    const v1, 0x7f0b009d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 83
    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    .line 84
    const-string v0, "ManageRecipient"

    const-string v1, "keycode_back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v0, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;

    iget-object v1, p0, Lcom/htc/android/mail/ManageRecipient;->myHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;-><init>(Lcom/htc/android/mail/ManageRecipient;Lcom/htc/android/mail/ManageRecipient;Landroid/os/Handler;I)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/htc/android/mail/ManageRecipient$LoadRecipientTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 89
    :cond_0
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 135
    if-eqz p1, :cond_0

    .line 137
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 140
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient;->chkAll()V

    .line 141
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 142
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient;->updateCmdBar()V

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient;->unchkAll()V

    .line 147
    iget-object v0, p0, Lcom/htc/android/mail/ManageRecipient;->adapter:Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;

    invoke-virtual {v0}, Lcom/htc/android/mail/ManageRecipient$ContactsAdapter;->notifyDataSetChanged()V

    .line 148
    invoke-direct {p0}, Lcom/htc/android/mail/ManageRecipient;->updateCmdBar()V

    goto :goto_0

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 96
    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    .local v0, markAll:Landroid/view/MenuItem;
    invoke-interface {p1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 99
    .local v1, unmarkAll:Landroid/view/MenuItem;
    iget v2, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient;->toList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 101
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 116
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 102
    :cond_0
    iget v2, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    if-ne v2, v5, :cond_1

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient;->ccList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 103
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 104
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 105
    :cond_1
    iget v2, p0, Lcom/htc/android/mail/ManageRecipient;->status:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient;->bccList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 106
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 107
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/htc/android/mail/ManageRecipient;->checkedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 109
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 110
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 112
    :cond_3
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 113
    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
