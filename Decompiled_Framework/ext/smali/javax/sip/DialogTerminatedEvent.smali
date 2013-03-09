.class public Ljavax/sip/DialogTerminatedEvent;
.super Ljava/util/EventObject;
.source "DialogTerminatedEvent.java"


# instance fields
.field private mDialog:Ljavax/sip/Dialog;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljavax/sip/Dialog;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljavax/sip/DialogTerminatedEvent;->mDialog:Ljavax/sip/Dialog;

    return-void
.end method


# virtual methods
.method public getDialog()Ljavax/sip/Dialog;
    .locals 1

    iget-object v0, p0, Ljavax/sip/DialogTerminatedEvent;->mDialog:Ljavax/sip/Dialog;

    return-object v0
.end method
