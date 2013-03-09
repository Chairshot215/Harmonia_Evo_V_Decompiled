.class public Lgov/nist/javax/sip/DialogTimeoutEvent;
.super Ljava/util/EventObject;
.source "DialogTimeoutEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x22e385bc1cf941b5L


# instance fields
.field private m_dialog:Ljavax/sip/Dialog;

.field private m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/Dialog;Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_dialog:Ljavax/sip/Dialog;

    iput-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    iput-object p2, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_dialog:Ljavax/sip/Dialog;

    iput-object p3, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-void
.end method


# virtual methods
.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_dialog:Ljavax/sip/Dialog;

    return-object v0
.end method

.method public getReason()Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;
    .locals 1

    iget-object v0, p0, Lgov/nist/javax/sip/DialogTimeoutEvent;->m_reason:Lgov/nist/javax/sip/DialogTimeoutEvent$Reason;

    return-object v0
.end method
