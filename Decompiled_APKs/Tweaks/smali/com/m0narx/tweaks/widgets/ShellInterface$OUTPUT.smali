.class final enum Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;
.super Ljava/lang/Enum;
.source "ShellInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/m0narx/tweaks/widgets/ShellInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OUTPUT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

.field private static final synthetic ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

.field public static final enum STDERR:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

.field public static final enum STDOUT:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    const-string v1, "STDOUT"

    invoke-direct {v0, v1, v2}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDOUT:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    .line 32
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    const-string v1, "STDERR"

    invoke-direct {v0, v1, v3}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDERR:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    .line 33
    new-instance v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    sget-object v1, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDOUT:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->STDERR:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->BOTH:Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    return-object v0
.end method

.method public static values()[Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;->ENUM$VALUES:[Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    array-length v1, v0

    new-array v2, v1, [Lcom/m0narx/tweaks/widgets/ShellInterface$OUTPUT;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
