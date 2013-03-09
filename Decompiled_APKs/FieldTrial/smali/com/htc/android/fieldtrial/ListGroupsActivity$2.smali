.class Lcom/htc/android/fieldtrial/ListGroupsActivity$2;
.super Ljava/lang/Object;
.source "ListGroupsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/fieldtrial/ListGroupsActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/fieldtrial/ListGroupsActivity;

.field final synthetic val$sampleRates:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/htc/android/fieldtrial/ListGroupsActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/htc/android/fieldtrial/ListGroupsActivity$2;->this$0:Lcom/htc/android/fieldtrial/ListGroupsActivity;

    iput-object p2, p0, Lcom/htc/android/fieldtrial/ListGroupsActivity$2;->val$sampleRates:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/htc/android/fieldtrial/ListGroupsActivity$2;->val$sampleRates:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/android/fieldtrial/SampleRate;

    invoke-static {v0}, Lcom/htc/android/fieldtrial/ListGroupsActivity;->access$002(Lcom/htc/android/fieldtrial/SampleRate;)Lcom/htc/android/fieldtrial/SampleRate;

    .line 145
    return-void
.end method
