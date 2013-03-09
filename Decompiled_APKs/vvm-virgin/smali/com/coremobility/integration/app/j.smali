.class public final Lcom/coremobility/integration/app/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/coremobility/integration/app/f;


# static fields
.field private static a:Lcom/coremobility/integration/app/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/coremobility/integration/app/j;->a:Lcom/coremobility/integration/app/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/coremobility/integration/app/j;
    .locals 3

    sget-object v0, Lcom/coremobility/integration/app/j;->a:Lcom/coremobility/integration/app/j;

    if-nez v0, :cond_0

    const/16 v0, 0x1c

    const-string v1, "VNS Creating CM_VnotesService instance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->d(ILjava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/coremobility/integration/app/j;

    invoke-direct {v0}, Lcom/coremobility/integration/app/j;-><init>()V

    sput-object v0, Lcom/coremobility/integration/app/j;->a:Lcom/coremobility/integration/app/j;

    :cond_0
    sget-object v0, Lcom/coremobility/integration/app/j;->a:Lcom/coremobility/integration/app/j;

    return-object v0
.end method

.method public static a(II)V
    .locals 3

    new-instance v0, Lcom/coremobility/k/aw;

    invoke-direct {v0, p0, p1}, Lcom/coremobility/k/aw;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.Data3"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.coremobility.app.vnotes.SUSPENDSEND"

    invoke-static {v1, v0}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v0, Lcom/coremobility/k/cb;

    invoke-direct {v0}, Lcom/coremobility/k/cb;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method

.method public static a(IILcom/coremobility/integration/h/c;)V
    .locals 2

    new-instance v0, Lcom/coremobility/k/au;

    invoke-direct {v0, p0, p1}, Lcom/coremobility/k/au;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    invoke-static {p0, p1, p2}, Lcom/coremobility/k/cx;->b(IILcom/coremobility/integration/h/c;)V

    new-instance v0, Lcom/coremobility/k/bz;

    iget v1, p2, Lcom/coremobility/integration/h/c;->a:I

    invoke-direct {v0, v1}, Lcom/coremobility/k/bz;-><init>(I)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method

.method public static a(JLjava/lang/String;IIIII)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.LONG"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.Data3"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.Data4"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.Data5"

    invoke-virtual {v0, v1, p7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.CHANGED"

    invoke-static {v1, v0}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(JLjava/lang/String;ILjava/lang/String;II)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.coremobility.app.vnotes.LONG"

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.Data3"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.coremobility.app.vnotes.MIMECHANGED"

    invoke-static {v1, v0}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static a(Ljava/lang/String;II)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1c

    const-string v1, "Ignoring Intent since Service is not running"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/coremobility/integration/app/CM_Service;->a(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1c

    const-string v1, "Ignoring Intent since Service is not running"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/coremobility/integration/c/a;->b(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static b(II)V
    .locals 1

    new-instance v0, Lcom/coremobility/k/aq;

    invoke-direct {v0, p0, p1}, Lcom/coremobility/k/aq;-><init>(II)V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "com.coremobility.app.vnotes.RESUMESEND"

    invoke-static {v0, p0, p1}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    new-instance v0, Lcom/coremobility/k/bv;

    invoke-direct {v0}, Lcom/coremobility/k/bv;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method

.method public static c()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/coremobility/k/ax;

    invoke-direct {v0}, Lcom/coremobility/k/ax;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "com.coremobility.app.vnotes.RETRYRETRIEVE"

    invoke-static {v0, v1, v1}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    new-instance v0, Lcom/coremobility/k/cc;

    invoke-direct {v0}, Lcom/coremobility/k/cc;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method

.method public static d()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/coremobility/k/ar;

    invoke-direct {v0}, Lcom/coremobility/k/ar;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    const-string v0, "com.coremobility.app.vnotes.RETRYSEND"

    invoke-static {v0, v1, v1}, Lcom/coremobility/integration/app/j;->a(Ljava/lang/String;II)V

    new-instance v0, Lcom/coremobility/k/bw;

    invoke-direct {v0}, Lcom/coremobility/k/bw;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/app/CM_Service;->a(Lcom/coremobility/integration/app/f;)V

    new-instance v0, Lcom/coremobility/k/af;

    invoke-direct {v0}, Lcom/coremobility/k/af;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->g()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/coremobility/k/cx;->a(Lcom/coremobility/k/dg;Z)I

    new-instance v0, Lcom/coremobility/k/bk;

    invoke-direct {v0}, Lcom/coremobility/k/bk;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coremobility/l/j;

    invoke-direct {v0}, Lcom/coremobility/l/j;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/integration/app/CM_App;->g()Lcom/coremobility/app/vnotes/cf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->a(Lcom/coremobility/k/dg;)I

    new-instance v0, Lcom/coremobility/l/l;

    invoke-direct {v0}, Lcom/coremobility/l/l;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Intent;)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.coremobility.app.vnotes.RETRYRETRIEVE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->j()V

    move v0, v9

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "com.coremobility.app.vnotes.RETRYSEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->k()V

    move v0, v9

    goto :goto_0

    :cond_2
    const-string v2, "com.coremobility.app.vnotes.SUSPENDSEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "com.coremobility.app.vnotes.Data3"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Lcom/coremobility/integration/h/c;

    invoke-direct {v4, v0}, Lcom/coremobility/integration/h/c;-><init>(B)V

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/coremobility/k/cx;->a(IIZLcom/coremobility/integration/h/c;)V

    move v0, v9

    goto :goto_0

    :cond_3
    const-string v2, "com.coremobility.app.vnotes.RESUMESEND"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Lcom/coremobility/integration/h/c;

    invoke-direct {v3, v0}, Lcom/coremobility/integration/h/c;-><init>(B)V

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual {v0, v1, v2, v3}, Lcom/coremobility/k/cx;->a(IILcom/coremobility/integration/h/c;)V

    move v0, v9

    goto :goto_0

    :cond_4
    const-string v2, "com.coremobility.app.vnotes.CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.LONG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "com.coremobility.app.vnotes.Data3"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "com.coremobility.app.vnotes.Data4"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "com.coremobility.app.vnotes.Data5"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual/range {v0 .. v8}, Lcom/coremobility/k/cx;->a(JLjava/lang/String;IIIII)V

    move v0, v9

    goto/16 :goto_0

    :cond_5
    const-string v2, "com.coremobility.app.vnotes.MIMECHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.LONG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.coremobility.app.vnotes.Data2"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    const-string v7, "com.coremobility.app.vnotes.Data3"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/k/cx;->a(JLjava/lang/String;ILjava/lang/String;II)V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual/range {v0 .. v7}, Lcom/coremobility/l/v;->a(JLjava/lang/String;ILjava/lang/String;II)V

    :cond_6
    move v0, v9

    goto/16 :goto_0

    :cond_7
    const-string v2, "com.coremobility.app.vnotes.VMSSETUPDONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->l()V

    move v0, v9

    goto/16 :goto_0

    :cond_8
    const-string v2, "com.coremobility.app.vnotes.REQVNOTEFILENAME"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/k/cx;->b(I)V

    move v0, v9

    goto/16 :goto_0

    :cond_9
    const-string v2, "com.coremobility.app.vnotes.VTTCONTINUEACTIVATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v0, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.STRING2"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/coremobility/l/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_a
    const-string v2, "com.coremobility.app.vnotes.VTTSUBSCRIBEREQUEST"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v1, "com.coremobility.app.vnotes.Data1"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/l/v;->a(I)V

    move v0, v9

    goto/16 :goto_0

    :cond_b
    const-string v2, "com.coremobility.app.vnotes.VTTUNSUBSCRIBEREQUES"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->k()V

    move v0, v9

    goto/16 :goto_0

    :cond_c
    const-string v2, "com.coremobility.app.vnotes.VTTCANCELACTIVATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->o()V

    move v0, v9

    goto/16 :goto_0

    :cond_d
    const-string v2, "com.coremobility.app.vnotes.VTTUSEROPEN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->p()V

    move v0, v9

    goto/16 :goto_0

    :cond_e
    const-string v2, "com.coremobility.app.vnotes.VTTPOSTGREET"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.LONG"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/l/v;->b(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_f
    const-string v2, "com.coremobility.app.vnotes.VTTSTARTDEACTIVATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->n()V

    move v0, v9

    goto/16 :goto_0

    :cond_10
    const-string v2, "com.coremobility.app.vnotes.VTTSURVEYDONE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->q()V

    move v0, v9

    goto/16 :goto_0

    :cond_11
    const-string v2, "com.coremobility.app.vnotes.SETSUBSCRIBERPREFERENCE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/coremobility/l/ad;

    invoke-direct {v1}, Lcom/coremobility/l/ad;-><init>()V

    const-string v2, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/coremobility/l/ad;->a:Ljava/lang/String;

    const-string v2, "com.coremobility.app.vnotes.LONG"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v1, Lcom/coremobility/l/ad;->c:I

    const-string v2, "com.coremobility.app.vnotes.STRING2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/coremobility/l/ad;->b:Ljava/lang/String;

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/coremobility/l/v;->a(Lcom/coremobility/l/ad;)V

    move v0, v9

    goto/16 :goto_0

    :cond_12
    const-string v2, "com.coremobility.app.vnotes.VTTPERIODICSURVEY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    invoke-static {v0}, Lcom/coremobility/l/v;->c(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_13
    const-string v2, "com.coremobility.app.vnotes.VTTUSERINPUTMDN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.STRING"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/l/v;->a(Ljava/lang/String;)V

    move v0, v9

    goto/16 :goto_0

    :cond_14
    const-string v2, "com.coremobility.app.vnotes.CORESMC_REFRESH_ACTION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {}, Lcom/coremobility/i/b;->a()Lcom/coremobility/i/b;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/coremobility/i/b;->f()V

    :cond_15
    move v0, v9

    goto/16 :goto_0

    :cond_16
    const-string v2, "com.coremobility.app.vnotes.SENDDATACONSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.coremobility.app.vnotes.BOOLEAN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/coremobility/l/v;->b(Z)V

    move v0, v9

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lcom/coremobility/k/x;

    invoke-direct {v0}, Lcom/coremobility/k/x;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {}, Lcom/coremobility/k/cx;->a()Lcom/coremobility/k/cx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/k/cx;->g()I

    new-instance v0, Lcom/coremobility/k/bc;

    invoke-direct {v0}, Lcom/coremobility/k/bc;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    sget-boolean v0, Lcom/coremobility/a/b;->c:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/coremobility/l/i;

    invoke-direct {v0}, Lcom/coremobility/l/i;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    invoke-static {}, Lcom/coremobility/l/v;->b()Lcom/coremobility/l/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremobility/l/v;->a()I

    new-instance v0, Lcom/coremobility/l/k;

    invoke-direct {v0}, Lcom/coremobility/l/k;-><init>()V

    invoke-static {v0}, Lcom/coremobility/integration/c/c;->a(Lcom/coremobility/integration/c/c;)V

    :cond_0
    invoke-static {}, Lcom/coremobility/integration/app/CM_Service;->a()Lcom/coremobility/integration/app/CM_Service;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/coremobility/integration/app/CM_Service;->b(Lcom/coremobility/integration/app/f;)V

    return-void
.end method
