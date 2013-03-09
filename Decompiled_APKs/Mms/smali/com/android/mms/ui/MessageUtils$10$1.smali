.class Lcom/android/mms/ui/MessageUtils$10$1;
.super Ljava/lang/Object;
.source "MessageUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MessageUtils$10;->onVCardParseComplete(ZLcom/android/vcard/VCardEntry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageUtils$10;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageUtils$10;)V
    .locals 0
    .parameter

    .prologue
    .line 2059
    iput-object p1, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2061
    iget-object v0, p0, Lcom/android/mms/ui/MessageUtils$10$1;->this$0:Lcom/android/mms/ui/MessageUtils$10;

    iget-object v0, v0, Lcom/android/mms/ui/MessageUtils$10;->val$mContext:Landroid/content/Context;

    const v1, 0x7f090153

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2062
    return-void
.end method
