.class Lcom/google/appinventor/components/runtime/ReplForm$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/ReplForm;->closeForm(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/appinventor/components/runtime/ReplForm;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/ReplForm$2;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Closing forms is not currently supported during development."

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/ReplForm$2;->this$0:Lcom/google/appinventor/components/runtime/ReplForm;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
