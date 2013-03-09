.class Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity$1;
.super Ljava/lang/Object;
.source "ContactGlanceSelectContactPhotoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity$1;->this$0:Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity$1;->this$0:Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->setResult(I)V

    .line 96
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity$1;->this$0:Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactGlanceSelectContactPhotoActivity;->finish()V

    .line 97
    return-void
.end method
