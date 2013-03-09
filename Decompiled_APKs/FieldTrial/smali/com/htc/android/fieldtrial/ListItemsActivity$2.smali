.class Lcom/htc/android/fieldtrial/ListItemsActivity$2;
.super Ljava/lang/Object;
.source "ListItemsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/fieldtrial/ListItemsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;


# direct methods
.method constructor <init>(Lcom/htc/android/fieldtrial/ListItemsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$2;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 341
    invoke-static {}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$200()Lcom/htc/android/fieldtrial/SampleRate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-static {}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$200()Lcom/htc/android/fieldtrial/SampleRate;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$302(Lcom/htc/android/fieldtrial/SampleRate;)Lcom/htc/android/fieldtrial/SampleRate;

    .line 345
    :cond_0
    invoke-static {}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$300()Lcom/htc/android/fieldtrial/SampleRate;

    move-result-object v0

    invoke-static {v0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->changeSampleRate(Lcom/htc/android/fieldtrial/SampleRate;)V

    .line 347
    iget-object v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$2;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    invoke-static {}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$300()Lcom/htc/android/fieldtrial/SampleRate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/android/fieldtrial/SampleRate;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/htc/android/fieldtrial/ListItemsActivity;->setRightSideTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$400(Lcom/htc/android/fieldtrial/ListItemsActivity;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/htc/android/fieldtrial/ListItemsActivity$2;->this$0:Lcom/htc/android/fieldtrial/ListItemsActivity;

    #calls: Lcom/htc/android/fieldtrial/ListItemsActivity;->makePeriodicalTask()V
    invoke-static {v0}, Lcom/htc/android/fieldtrial/ListItemsActivity;->access$500(Lcom/htc/android/fieldtrial/ListItemsActivity;)V

    .line 349
    return-void
.end method
