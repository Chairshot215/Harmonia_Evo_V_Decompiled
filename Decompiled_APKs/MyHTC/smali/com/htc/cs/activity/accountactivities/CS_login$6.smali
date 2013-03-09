.class Lcom/htc/cs/activity/accountactivities/CS_login$6;
.super Ljava/lang/Object;
.source "CS_login.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cs/activity/accountactivities/CS_login;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/cs/activity/accountactivities/CS_login;


# direct methods
.method constructor <init>(Lcom/htc/cs/activity/accountactivities/CS_login;)V
    .locals 0
    .parameter

    .prologue
    .line 1516
    iput-object p1, p0, Lcom/htc/cs/activity/accountactivities/CS_login$6;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 1521
    if-eqz p2, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$6;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/htc/cs/util/PhoneStatusUtil;->setHTCLocateSetting(Landroid/content/Context;Z)V

    .line 1527
    :goto_0
    return-void

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/htc/cs/activity/accountactivities/CS_login$6;->this$0:Lcom/htc/cs/activity/accountactivities/CS_login;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/cs/util/PhoneStatusUtil;->setHTCLocateSetting(Landroid/content/Context;Z)V

    goto :goto_0
.end method
