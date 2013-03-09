.class Lcom/htc/android/mail/easclient/EASClient$5;
.super Ljava/lang/Object;
.source "EASClient.java"

# interfaces
.implements Lcom/htc/preference/HtcPreference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/android/mail/easclient/EASClient;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/android/mail/easclient/EASClient;


# direct methods
.method constructor <init>(Lcom/htc/android/mail/easclient/EASClient;)V
    .locals 0
    .parameter

    .prologue
    .line 382
    iput-object p1, p0, Lcom/htc/android/mail/easclient/EASClient$5;->this$0:Lcom/htc/android/mail/easclient/EASClient;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Lcom/htc/preference/HtcPreference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 385
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 386
    .local v0, checked:Z
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/android/mail/easclient/EASClient$5$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/android/mail/easclient/EASClient$5$1;-><init>(Lcom/htc/android/mail/easclient/EASClient$5;Z)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 397
    const/4 v1, 0x1

    return v1
.end method
