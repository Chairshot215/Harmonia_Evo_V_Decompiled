.class Landroid/webkit/WebView$SaveWebArchiveMessage;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveWebArchiveMessage"
.end annotation


# instance fields
.field final mAutoname:Z

.field final mBasename:Ljava/lang/String;

.field final mCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mResultFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mAutoname:Z

    iput-object p3, p0, Landroid/webkit/WebView$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    return-void
.end method
