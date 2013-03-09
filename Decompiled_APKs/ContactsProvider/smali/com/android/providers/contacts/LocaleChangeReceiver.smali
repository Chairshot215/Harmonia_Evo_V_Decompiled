.class public Lcom/android/providers/contacts/LocaleChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocaleChangeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 40
    .local v1, iprovider:Landroid/content/IContentProvider;
    invoke-static {v1}, Landroid/content/ContentProvider;->coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;

    move-result-object v2

    .line 41
    .local v2, provider:Landroid/content/ContentProvider;
    instance-of v3, v2, Lcom/android/providers/contacts/ContactsProvider2;

    if-eqz v3, :cond_0

    .line 42
    check-cast v2, Lcom/android/providers/contacts/ContactsProvider2;

    .end local v2           #provider:Landroid/content/ContentProvider;
    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsProvider2;->onLocaleChanged()V

    goto :goto_0
.end method
