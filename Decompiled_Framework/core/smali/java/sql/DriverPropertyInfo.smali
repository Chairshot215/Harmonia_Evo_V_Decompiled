.class public Ljava/sql/DriverPropertyInfo;
.super Ljava/lang/Object;
.source "DriverPropertyInfo.java"


# instance fields
.field public choices:[Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public required:Z

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/sql/DriverPropertyInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Ljava/sql/DriverPropertyInfo;->value:Ljava/lang/String;

    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->choices:[Ljava/lang/String;

    iput-object v0, p0, Ljava/sql/DriverPropertyInfo;->description:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/sql/DriverPropertyInfo;->required:Z

    return-void
.end method
