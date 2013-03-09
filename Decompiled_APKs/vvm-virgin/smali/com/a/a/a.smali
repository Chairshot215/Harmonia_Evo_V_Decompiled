.class public final Lcom/a/a/a;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/a/a/e;


# direct methods
.method public constructor <init>(Lcom/a/a/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/a;->a:Lcom/a/a/e;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/a/a/c;)V
    .locals 6

    new-instance v0, Lcom/a/a/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/a/a/b;-><init>(Lcom/a/a/a;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/a/a/c;)V

    invoke-virtual {v0}, Lcom/a/a/b;->start()V

    return-void
.end method
