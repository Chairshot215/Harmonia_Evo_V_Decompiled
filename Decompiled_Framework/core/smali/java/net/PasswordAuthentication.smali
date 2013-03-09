.class public final Ljava/net/PasswordAuthentication;
.super Ljava/lang/Object;
.source "PasswordAuthentication.java"


# instance fields
.field private password:[C

.field private userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    invoke-virtual {p2}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    return-void
.end method


# virtual methods
.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Ljava/net/PasswordAuthentication;->password:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljava/net/PasswordAuthentication;->userName:Ljava/lang/String;

    return-object v0
.end method
