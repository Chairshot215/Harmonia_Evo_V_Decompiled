.class Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;
.super Ljava/lang/Object;
.source "MonkeySourceNetworkVars.java"

# interfaces
.implements Lcom/android/commands/monkey/MonkeySourceNetworkVars$VarGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetworkVars;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticVarGetter"
.end annotation


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetworkVars$StaticVarGetter;->value:Ljava/lang/String;

    return-object v0
.end method
