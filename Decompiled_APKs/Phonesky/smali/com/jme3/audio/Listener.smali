.class public Lcom/jme3/audio/Listener;
.super Ljava/lang/Object;
.source "Listener.java"


# instance fields
.field private location:Lcom/jme3/math/Vector3f;

.field private renderer:Lcom/jme3/audio/AudioRenderer;

.field private rotation:Lcom/jme3/math/Quaternion;

.field private velocity:Lcom/jme3/math/Vector3f;

.field private volume:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/jme3/audio/Listener;->volume:F

    .line 47
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->location:Lcom/jme3/math/Vector3f;

    .line 48
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->velocity:Lcom/jme3/math/Vector3f;

    .line 49
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/audio/Listener;->rotation:Lcom/jme3/math/Quaternion;

    .line 50
    return-void
.end method


# virtual methods
.method public setRenderer(Lcom/jme3/audio/AudioRenderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jme3/audio/Listener;->renderer:Lcom/jme3/audio/AudioRenderer;

    .line 61
    return-void
.end method
