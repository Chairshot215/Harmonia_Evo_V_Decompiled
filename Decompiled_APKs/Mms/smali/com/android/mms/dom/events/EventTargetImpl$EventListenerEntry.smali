.class Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;
.super Ljava/lang/Object;
.source "EventTargetImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/events/EventTargetImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EventListenerEntry"
.end annotation


# instance fields
.field final mListener:Lorg/w3c/dom/events/EventListener;

.field final mType:Ljava/lang/String;

.field final mUseCapture:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0
    .parameter "type"
    .parameter "listener"
    .parameter "useCapture"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mType:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mListener:Lorg/w3c/dom/events/EventListener;

    .line 44
    iput-boolean p3, p0, Lcom/android/mms/dom/events/EventTargetImpl$EventListenerEntry;->mUseCapture:Z

    .line 45
    return-void
.end method
