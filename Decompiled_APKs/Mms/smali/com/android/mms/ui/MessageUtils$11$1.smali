.class Lcom/android/mms/ui/MessageUtils$11$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$11;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$11;

.field final synthetic val$resId:I


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$11;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2116
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$11$1;->this$0:Lcom/android/mms/ui/MessageUtils$11;

    iput p2, p0, Lcom/android/mms/ui/MessageUtils$11$1;->val$resId:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2118
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$11$1;->this$0:Lcom/android/mms/ui/MessageUtils$11;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$11;->val$mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/mms/ui/MessageUtils$11$1;->val$resId:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2119
    return-void
.end method
