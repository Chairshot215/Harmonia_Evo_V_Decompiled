.class public Lcom/android/mms/transaction/GroupMessage;
.super Ljava/lang/Object;
.source "GroupMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/GroupMessage$Status;
    }
.end annotation


# static fields
.field private static idCounter:J


# instance fields
.field public dests:[Ljava/lang/String;

.field public groupId:J

.field public size:I

.field public status:[Lcom/android/mms/transaction/GroupMessage$Status;

.field public uris:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/mms/transaction/GroupMessage;->idCounter:J

    return-void
.end method

.method constructor <init>(I)V
    .locals 4
    .parameter "s"

    .prologue
    .line 44
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-wide v0, Lcom/android/mms/transaction/GroupMessage;->idCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/mms/transaction/GroupMessage;->idCounter:J

    iput-wide v0, p0, Lcom/android/mms/transaction/GroupMessage;->groupId:J

    .line 46
    iput p1, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    .line 47
    iget v0, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/GroupMessage;->dests:[Ljava/lang/String;

    .line 48
    iget v0, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    new-array v0, v0, [Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/transaction/GroupMessage;->uris:[Landroid/net/Uri;

    .line 49
    iget v0, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    new-array v0, v0, [Lcom/android/mms/transaction/GroupMessage$Status;

    iput-object v0, p0, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    .line 50
    return-void
.end method


# virtual methods
.method getFailCount()I
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    if-ge v1, v2, :cond_1

    .line 88
    iget-object v2, p0, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    aget-object v2, v2, v1

    sget-object v3, Lcom/android/mms/transaction/GroupMessage$Status;->RESULT_OK:Lcom/android/mms/transaction/GroupMessage$Status;

    if-eq v2, v3, :cond_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    .line 87
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    :cond_1
    return v0
.end method

.method haveAllResult()Z
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    if-ge v0, v1, :cond_2

    .line 71
    iget-object v1, p0, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/mms/transaction/GroupMessage$Status;->IDLE:Lcom/android/mms/transaction/GroupMessage$Status;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/mms/transaction/GroupMessage$Status;->SENT:Lcom/android/mms/transaction/GroupMessage$Status;

    if-ne v1, v2, :cond_1

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 74
    :goto_1
    return v1

    .line 70
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method isAllOk()Z
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    if-ge v0, v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    aget-object v1, v1, v0

    sget-object v2, Lcom/android/mms/transaction/GroupMessage$Status;->RESULT_OK:Lcom/android/mms/transaction/GroupMessage$Status;

    if-eq v1, v2, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_1
    return v1

    .line 78
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method updateStatus(ILjava/lang/String;Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V
    .locals 1
    .parameter "idx"
    .parameter "dest"
    .parameter "uri"
    .parameter "s"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/mms/transaction/GroupMessage;->dests:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 54
    iget-object v0, p0, Lcom/android/mms/transaction/GroupMessage;->uris:[Landroid/net/Uri;

    aput-object p3, v0, p1

    .line 55
    iget-object v0, p0, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    aput-object p4, v0, p1

    .line 56
    return-void
.end method

.method updateStatus(Landroid/net/Uri;Lcom/android/mms/transaction/GroupMessage$Status;)V
    .locals 2
    .parameter "uri"
    .parameter "s"

    .prologue
    .line 59
    if-eqz p1, :cond_0

    .line 60
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/mms/transaction/GroupMessage;->size:I

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/mms/transaction/GroupMessage;->uris:[Landroid/net/Uri;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/mms/transaction/GroupMessage;->status:[Lcom/android/mms/transaction/GroupMessage$Status;

    aput-object p2, v1, v0

    .line 67
    .end local v0           #i:I
    :cond_0
    return-void

    .line 60
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
