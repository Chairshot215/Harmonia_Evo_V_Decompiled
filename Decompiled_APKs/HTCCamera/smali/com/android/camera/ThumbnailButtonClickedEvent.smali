.class public Lcom/android/camera/ThumbnailButtonClickedEvent;
.super Lcom/android/camera/InterruptableEvent;
.source "ThumbnailButtonClickedEvent.java"


# instance fields
.field private final m_MediaFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/InterruptableEvent;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/camera/ThumbnailButtonClickedEvent;->m_MediaFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getMediaFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/ThumbnailButtonClickedEvent;->m_MediaFilePath:Ljava/lang/String;

    return-object v0
.end method
