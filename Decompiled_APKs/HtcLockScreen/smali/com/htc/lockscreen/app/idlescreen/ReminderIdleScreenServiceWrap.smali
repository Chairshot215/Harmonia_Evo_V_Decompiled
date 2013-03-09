.class public Lcom/htc/lockscreen/app/idlescreen/ReminderIdleScreenServiceWrap;
.super Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;
.source "ReminderIdleScreenServiceWrap.java"


# static fields
.field private static final BASE_IDELSCREEN_PACKAGENAME:Ljava/lang/String; = "com.htc.idlescreen.paint"

.field private static final BASE_IDELSCREEN_SERVICENAME:Ljava/lang/String; = "com.htc.idlescreen.paint.myIdleScreen"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V
    .locals 0
    .parameter "context"
    .parameter "idleScreenInfo"

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/htc/lockscreen/app/idlescreen/IdleScreenServiceWrap;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V

    .line 16
    return-void
.end method

.method public static getInstacne(Landroid/content/Context;)Lcom/htc/lockscreen/app/idlescreen/ReminderIdleScreenServiceWrap;
    .locals 5
    .parameter "context"

    .prologue
    .line 19
    new-instance v0, Landroid/content/ComponentName;

    const-string v3, "com.htc.idlescreen.paint"

    const-string v4, "com.htc.idlescreen.paint.myIdleScreen"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .local v0, componentName:Landroid/content/ComponentName;
    invoke-static {p0, v0}, Lcom/htc/lockscreen/app/idlescreen/ReminderIdleScreenServiceWrap;->getIdleScreenInfo(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;

    move-result-object v1

    .line 21
    .local v1, idleInfo:Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;
    if-nez v1, :cond_0

    .line 22
    const/4 v2, 0x0

    .line 25
    :goto_0
    return-object v2

    .line 24
    :cond_0
    new-instance v2, Lcom/htc/lockscreen/app/idlescreen/ReminderIdleScreenServiceWrap;

    invoke-direct {v2, p0, v1}, Lcom/htc/lockscreen/app/idlescreen/ReminderIdleScreenServiceWrap;-><init>(Landroid/content/Context;Lcom/htc/lockscreen/idlescreen/IdleScreenInfo;)V

    .line 25
    .local v2, service:Lcom/htc/lockscreen/app/idlescreen/ReminderIdleScreenServiceWrap;
    goto :goto_0
.end method


# virtual methods
.method protected getWindowType()I
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x67

    return v0
.end method
