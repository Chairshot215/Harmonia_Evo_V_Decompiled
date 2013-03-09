.class Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;
.super Ljava/lang/Object;
.source "ReminderCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlertCmd"
.end annotation


# instance fields
.field public mAction:Ljava/lang/String;

.field public mDesp:Ljava/lang/String;

.field public mId:J

.field final synthetic this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;


# direct methods
.method private constructor <init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;->this$0:Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/htc/lockscreen/app/ctrl/ReminderCtrl$AlertCmd;-><init>(Lcom/htc/lockscreen/app/ctrl/ReminderCtrl;)V

    return-void
.end method
