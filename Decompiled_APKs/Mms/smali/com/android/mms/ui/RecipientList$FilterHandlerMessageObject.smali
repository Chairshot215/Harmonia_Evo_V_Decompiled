.class Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;
.super Ljava/lang/Object;
.source "RecipientList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/RecipientList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterHandlerMessageObject"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;

.field private mUpdateReason:I

.field final synthetic this$0:Lcom/android/mms/ui/RecipientList;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/RecipientList;Landroid/content/Context;Lcom/android/mms/ui/RecipientList$Recipient;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "recipient"
    .parameter "updateReason"

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->this$0:Lcom/android/mms/ui/RecipientList;

    .line 296
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object p2, p0, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;

    .line 298
    iput-object p3, p0, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;

    .line 299
    iput p4, p0, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mUpdateReason:I

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)Lcom/android/mms/ui/RecipientList$Recipient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mRecipient:Lcom/android/mms/ui/RecipientList$Recipient;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 294
    iget v0, p0, Lcom/android/mms/ui/RecipientList$FilterHandlerMessageObject;->mUpdateReason:I

    return v0
.end method
