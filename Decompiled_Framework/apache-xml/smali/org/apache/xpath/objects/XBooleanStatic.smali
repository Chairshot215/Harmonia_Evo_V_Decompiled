.class public Lorg/apache/xpath/objects/XBooleanStatic;
.super Lorg/apache/xpath/objects/XBoolean;
.source "XBooleanStatic.java"


# static fields
.field static final serialVersionUID:J = -0x6fe99b38bcdd7431L


# instance fields
.field private final m_val:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xpath/objects/XBoolean;-><init>(Z)V

    iput-boolean p1, p0, Lorg/apache/xpath/objects/XBooleanStatic;->m_val:Z

    return-void
.end method


# virtual methods
.method public equals(Lorg/apache/xpath/objects/XObject;)Z
    .locals 3

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/xpath/objects/XBooleanStatic;->m_val:Z

    invoke-virtual {p1}, Lorg/apache/xpath/objects/XObject;->bool()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/apache/xml/utils/WrappedRuntimeException;

    invoke-direct {v1, v0}, Lorg/apache/xml/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
