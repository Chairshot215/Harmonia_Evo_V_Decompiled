.class Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;
.super Ljava/lang/Object;
.source "ContactGlanceSelectDefaultActionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;->this$0:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;->this$0:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->setResult(I)V

    .line 172
    iget-object v0, p0, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity$1;->this$0:Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;

    invoke-virtual {v0}, Lcom/android/htccontacts/ContactGlanceSelectDefaultActionActivity;->finish()V

    .line 173
    return-void
.end method
