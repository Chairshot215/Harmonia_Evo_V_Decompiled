.class final Lcom/coremobility/app/vnotes/db;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/ref/SoftReference;

.field final synthetic b:Lcom/coremobility/app/vnotes/da;


# direct methods
.method synthetic constructor <init>(Lcom/coremobility/app/vnotes/da;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/coremobility/app/vnotes/db;-><init>(Lcom/coremobility/app/vnotes/da;B)V

    return-void
.end method

.method private constructor <init>(Lcom/coremobility/app/vnotes/da;B)V
    .locals 1

    iput-object p1, p0, Lcom/coremobility/app/vnotes/db;->b:Lcom/coremobility/app/vnotes/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/coremobility/app/vnotes/db;->a:Ljava/lang/ref/SoftReference;

    return-void
.end method
