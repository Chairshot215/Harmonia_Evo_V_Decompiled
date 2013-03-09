.class public Lorg/jivesoftware/smack/packet/Presence$ClientType;
.super Ljava/lang/Object;
.source "Presence.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jivesoftware/smack/packet/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientType"
.end annotation


# static fields
.field public static final ANDROID:Lorg/jivesoftware/smack/packet/Presence$ClientType;

.field public static final MOBILE:Lorg/jivesoftware/smack/packet/Presence$ClientType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 565
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;

    const-string v1, "android"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$ClientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->ANDROID:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    .line 566
    new-instance v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;

    const-string v1, "mobile"

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$ClientType;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->MOBILE:Lorg/jivesoftware/smack/packet/Presence$ClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    iput-object p1, p0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->value:Ljava/lang/String;

    .line 572
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lorg/jivesoftware/smack/packet/Presence$ClientType;->value:Ljava/lang/String;

    return-object v0
.end method
