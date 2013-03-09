.class public Lcom/google/android/gm/widget/GmailWidgetService;
.super Landroid/widget/RemoteViewsService;
.source "GmailWidgetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;
    }
.end annotation


# static fields
.field private static sWidgetLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gm/widget/GmailWidgetService;->sWidgetLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/RemoteViewsService;-><init>()V

    .line 50
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/google/android/gm/widget/GmailWidgetService;->sWidgetLock:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .locals 2
    .parameter "intent"

    .prologue
    .line 44
    new-instance v0, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;

    invoke-virtual {p0}, Lcom/google/android/gm/widget/GmailWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gm/widget/GmailWidgetService$GmailFactory;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method
