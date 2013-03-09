.class public Lgov/nist/javax/sip/header/Priority;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Priority.java"

# interfaces
.implements Ljavax/sip/header/PriorityHeader;


# static fields
.field public static final EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final NON_URGENT:Ljava/lang/String; = "non-urgent"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final URGENT:Ljava/lang/String; = "urgent"

.field private static final serialVersionUID:J = 0x3541b15bf9044cbaL


# instance fields
.field protected priority:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Priority"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    return-object v0
.end method

.method public setPriority(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,Priority, setPriority(), the priority parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Priority;->priority:Ljava/lang/String;

    return-void
.end method
