.class Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;
.super Ljava/lang/Object;
.source "ContactNameCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/ContactNameCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHandlerMessageObject"
.end annotation


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/mms/util/ContactNameCache;


# direct methods
.method public constructor <init>(Lcom/android/mms/util/ContactNameCache;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "address"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->this$0:Lcom/android/mms/util/ContactNameCache;

    .line 743
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput-object p2, p0, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;

    .line 745
    iput-object p3, p0, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;

    .line 746
    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/mms/util/ContactNameCache$FilterHandlerMessageObject;->mAddress:Ljava/lang/String;

    return-object v0
.end method
