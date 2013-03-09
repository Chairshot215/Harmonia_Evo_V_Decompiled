.class Lcom/android/htccontacts/BrowseContactsAllActivity2$GetSIMMaxAlphaTagLengthThread;
.super Ljava/lang/Thread;
.source "BrowseContactsAllActivity2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/BrowseContactsAllActivity2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GetSIMMaxAlphaTagLengthThread"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 3578
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/htccontacts/BrowseContactsAllActivity2$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 3578
    invoke-direct {p0}, Lcom/android/htccontacts/BrowseContactsAllActivity2$GetSIMMaxAlphaTagLengthThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3580
    invoke-static {}, Lcom/android/htccontacts/util/ContactsUtils;->getSIMMaxAlphaTagLength()I

    move-result v0

    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8002(I)I

    .line 3581
    invoke-static {}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8000()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3582
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/android/htccontacts/BrowseContactsAllActivity2;->access$8002(I)I

    .line 3584
    :cond_0
    return-void
.end method
