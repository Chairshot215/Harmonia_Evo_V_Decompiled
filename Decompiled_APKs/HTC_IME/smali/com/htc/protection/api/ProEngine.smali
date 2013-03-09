.class public final Lcom/htc/protection/api/ProEngine;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protection/api/ProEngine$IllegalDeviceException;,
        Lcom/htc/protection/api/ProEngine$ProInvocationHandler;
    }
.end annotation


# static fields
.field public static dialog:Landroid/app/Dialog;

.field private static handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

.field private static proxy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    sput-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    sput-object v0, Lcom/htc/protection/api/ProEngine;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlertDialog(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    new-instance v2, Lcom/htc/protection/api/ProEngine$1;

    invoke-direct {v2, p0}, Lcom/htc/protection/api/ProEngine$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    if-eqz p3, :cond_0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {v0, p4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_2
    if-eqz p2, :cond_3

    new-instance v1, Lcom/htc/protection/api/ProEngine$2;

    invoke-direct {v1, p0}, Lcom/htc/protection/api/ProEngine$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/htc/protection/api/ProEngine;->dialog:Landroid/app/Dialog;

    sget-object v0, Lcom/htc/protection/api/ProEngine;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static load(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, v0}, Lcom/htc/protection/api/ProEngine;->load(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static load(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "com.htc.protection.api.__HtcCheck"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    sput-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    sget-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/htc/protection/api/_HtcCheck;

    invoke-direct {v0, p0}, Lcom/htc/protection/api/_HtcCheck;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    :cond_1
    const-class v0, Lcom/htc/protection/api/ProEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Lcom/htc/protection/api/ProInterface;

    aput-object v2, v1, v4

    const-class v2, Lcom/htc/protection/api/FakeProt;

    aput-object v2, v1, v5

    sget-object v2, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    :try_start_1
    sget-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    invoke-virtual {v0}, Lcom/htc/protection/api/ProEngine$ProInvocationHandler;->load()V

    sget-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    check-cast v0, Lcom/htc/protection/api/ProInterface;

    invoke-interface {v0}, Lcom/htc/protection/api/ProInterface;->check()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Lcom/htc/protection/api/_HtcCheck;

    invoke-direct {v0, p0}, Lcom/htc/protection/api/_HtcCheck;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    invoke-virtual {v0}, Lcom/htc/protection/api/ProEngine$ProInvocationHandler;->unload()V

    invoke-static {p0, p1, p2, p3, p4}, Lcom/htc/protection/api/ProEngine;->createAlertDialog(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static load(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "Sorry!"

    invoke-static {p0, v1, v1, v0, p1}, Lcom/htc/protection/api/ProEngine;->load(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized unload()V
    .locals 2

    const-class v1, Lcom/htc/protection/api/ProEngine;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-object v0, Lcom/htc/protection/api/ProEngine;->proxy:Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/htc/protection/api/ProEngine;->handler:Lcom/htc/protection/api/ProEngine$ProInvocationHandler;

    invoke-virtual {v0}, Lcom/htc/protection/api/ProEngine$ProInvocationHandler;->unload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
