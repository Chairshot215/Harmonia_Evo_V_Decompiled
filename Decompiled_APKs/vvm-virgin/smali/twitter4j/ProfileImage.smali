.class public interface abstract Ltwitter4j/ProfileImage;
.super Ljava/lang/Object;
.source "ProfileImage.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltwitter4j/ProfileImage$1;,
        Ltwitter4j/ProfileImage$ImageSize;
    }
.end annotation


# static fields
.field public static final BIGGER:Ltwitter4j/ProfileImage$ImageSize;

.field public static final MINI:Ltwitter4j/ProfileImage$ImageSize;

.field public static final NORMAL:Ltwitter4j/ProfileImage$ImageSize;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    new-instance v0, Ltwitter4j/ProfileImage$ImageSize;

    const-string v1, "bigger"

    invoke-direct {v0, v1, v2}, Ltwitter4j/ProfileImage$ImageSize;-><init>(Ljava/lang/String;Ltwitter4j/ProfileImage$1;)V

    sput-object v0, Ltwitter4j/ProfileImage;->BIGGER:Ltwitter4j/ProfileImage$ImageSize;

    .line 31
    new-instance v0, Ltwitter4j/ProfileImage$ImageSize;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Ltwitter4j/ProfileImage$ImageSize;-><init>(Ljava/lang/String;Ltwitter4j/ProfileImage$1;)V

    sput-object v0, Ltwitter4j/ProfileImage;->NORMAL:Ltwitter4j/ProfileImage$ImageSize;

    .line 32
    new-instance v0, Ltwitter4j/ProfileImage$ImageSize;

    const-string v1, "mini"

    invoke-direct {v0, v1, v2}, Ltwitter4j/ProfileImage$ImageSize;-><init>(Ljava/lang/String;Ltwitter4j/ProfileImage$1;)V

    sput-object v0, Ltwitter4j/ProfileImage;->MINI:Ltwitter4j/ProfileImage$ImageSize;

    return-void
.end method


# virtual methods
.method public abstract getURL()Ljava/lang/String;
.end method
