.class Lcom/htc/preference/HtcPreferenceActivity$4;
.super Ljava/lang/Object;
.source "HtcPreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/preference/HtcPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/htc/preference/HtcPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/htc/preference/HtcPreferenceActivity$4;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 721
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$4;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceActivity;->setResult(I)V

    .line 722
    iget-object v0, p0, Lcom/htc/preference/HtcPreferenceActivity$4;->this$0:Lcom/htc/preference/HtcPreferenceActivity;

    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceActivity;->finish()V

    .line 723
    return-void
.end method
