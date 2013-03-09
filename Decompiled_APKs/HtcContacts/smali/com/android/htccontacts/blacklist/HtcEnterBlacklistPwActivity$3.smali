.class Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$3;
.super Ljava/lang/Object;
.source "HtcEnterBlacklistPwActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;


# direct methods
.method constructor <init>(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity$3;->this$0:Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;

    #calls: Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->showPassword(Z)V
    invoke-static {v0, p2}, Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;->access$200(Lcom/android/htccontacts/blacklist/HtcEnterBlacklistPwActivity;Z)V

    .line 446
    return-void
.end method
