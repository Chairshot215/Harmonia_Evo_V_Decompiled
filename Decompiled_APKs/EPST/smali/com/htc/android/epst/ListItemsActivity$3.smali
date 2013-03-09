.class Lcom/htc/android/epst/ListItemsActivity$3;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/epst/ListItemsActivity;->returnDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/epst/ListItemsActivity;

.field final synthetic val$iMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/htc/android/epst/ListItemsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 984
    iput-object p1, p0, Lcom/htc/android/epst/ListItemsActivity$3;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iput-object p2, p0, Lcom/htc/android/epst/ListItemsActivity$3;->val$iMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 986
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$3;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/htc/android/epst/ListItemsActivity;->removeDialog(I)V

    .line 987
    iget-object v0, p0, Lcom/htc/android/epst/ListItemsActivity$3;->this$0:Lcom/htc/android/epst/ListItemsActivity;

    iget-object v1, p0, Lcom/htc/android/epst/ListItemsActivity$3;->val$iMessage:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 988
    return-void
.end method
