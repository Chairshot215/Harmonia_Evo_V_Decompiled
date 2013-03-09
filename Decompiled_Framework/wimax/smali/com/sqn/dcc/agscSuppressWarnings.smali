.class Lcom/sqn/dcc/agscSuppressWarnings;
.super Ljava/lang/Object;
.source "agscSuppressWarnings.java"


# static fields
.field public static _id:I = 0x0

.field public static final _name:Ljava/lang/String; = "SuppressWarnings"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sqn/dcc/agscSuppressWarnings;->_id:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static marshall([BILcom/sqn/dcc/OutValue;Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/sqn/dcc/OutValue",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p3, p2}, Lcom/sqn/dcc/Util;->Copy32ToBuffer([BZLcom/sqn/dcc/OutValue;)V

    return v0
.end method
