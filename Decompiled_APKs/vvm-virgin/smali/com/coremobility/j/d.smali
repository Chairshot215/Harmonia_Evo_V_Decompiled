.class public final Lcom/coremobility/j/d;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/coremobility/j/d;->a:I

    iput-object p2, p0, Lcom/coremobility/j/d;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/coremobility/j/d;->c:Ljava/util/Hashtable;

    return-void
.end method
