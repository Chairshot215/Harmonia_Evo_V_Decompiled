.class public Lcom/google/android/gsf/login/Compat;
.super Ljava/lang/Object;
.source "Compat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/login/Compat$ContactsContract;
    }
.end annotation


# static fields
.field private static final sActionBarSetDisplayShowHomeEnabled:Ljava/lang/reflect/Method;

.field private static final sActionBarSetDisplayShowTitleEnabled:Ljava/lang/reflect/Method;

.field private static final sActionBarSetTitle:Ljava/lang/reflect/Method;

.field private static final sApplyMethod:Ljava/lang/reflect/Method;

.field private static final sContextGetActionBar:Ljava/lang/reflect/Method;

.field private static final sEventLog:Ljava/lang/Class;

.field private static final sEventLogWriteEvent:Ljava/lang/reflect/Method;

.field private static final sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

.field private static final sTrafficStats:Ljava/lang/Class;

.field private static final sTrafficStatsClearThreadStatsTag:Ljava/lang/reflect/Method;

.field private static final sTrafficStatsSetThreadStatsTag:Ljava/lang/reflect/Method;

.field private static final sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

.field private static final sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string v1, "apply"

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sApplyMethod:Ljava/lang/reflect/Method;

    .line 63
    const-class v0, Landroid/app/Activity;

    const-string v1, "getActionBar"

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    .line 66
    const-class v0, Landroid/view/ViewConfiguration;

    const-string v1, "hasPermanentMenuKey"

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

    .line 69
    const-class v0, Landroid/view/MenuItem;

    const-string v1, "setShowAsAction"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

    .line 72
    const-string v0, "android.app.ActionBar"

    const-string v1, "setTitle"

    const-class v2, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sActionBarSetTitle:Ljava/lang/reflect/Method;

    .line 75
    const-string v0, "android.app.ActionBar"

    const-string v1, "setDisplayShowHomeEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowHomeEnabled:Ljava/lang/reflect/Method;

    .line 79
    const-string v0, "android.app.ActionBar"

    const-string v1, "setDisplayShowTitleEnabled"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowTitleEnabled:Ljava/lang/reflect/Method;

    .line 83
    const-class v0, Landroid/view/View;

    const-string v1, "setSystemUiVisibility"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    .line 87
    const-string v0, "android.net.TrafficStats"

    invoke-static {v0}, Lcom/google/android/gsf/login/Compat;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStats:Ljava/lang/Class;

    .line 89
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStats:Ljava/lang/Class;

    const-string v1, "setThreadStatsTag"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStatsSetThreadStatsTag:Ljava/lang/reflect/Method;

    .line 93
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStats:Ljava/lang/Class;

    const-string v1, "clearThreadStatsTag"

    invoke-static {v0, v1}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStatsClearThreadStatsTag:Ljava/lang/reflect/Method;

    .line 96
    const-string v0, "android.util.EventLog"

    invoke-static {v0}, Lcom/google/android/gsf/login/Compat;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sEventLog:Ljava/lang/Class;

    .line 97
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sEventLog:Ljava/lang/Class;

    const-string v1, "writeEvent"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gsf/login/Compat;->findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/login/Compat;->sEventLogWriteEvent:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static actionBarSetDisplayShowHomeEnabled(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "c"
    .parameter "id"

    .prologue
    .line 243
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    .line 252
    :goto_0
    return-void

    .line 247
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 248
    .local v0, ab:Ljava/lang/Object;
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowHomeEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 249
    .end local v0           #ab:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static actionBarSetDisplayShowTitleEnabled(Landroid/app/Activity;Z)V
    .locals 5
    .parameter "c"
    .parameter "id"

    .prologue
    .line 255
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, ab:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 261
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sActionBarSetDisplayShowTitleEnabled:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 263
    .end local v0           #ab:Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static eventLogWriteEvent(ILjava/lang/String;)V
    .locals 5
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 190
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sEventLogWriteEvent:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sEventLogWriteEvent:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gsf/login/Compat;->sEventLog:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "c"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p0, :cond_0

    .line 136
    :goto_0
    return-object v1

    .line 132
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, unused:Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "c"
    .parameter "name"
    .parameter "param"

    .prologue
    const/4 v1, 0x0

    .line 141
    if-nez p0, :cond_0

    .line 148
    :goto_0
    return-object v1

    .line 144
    :cond_0
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, unused:Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "c"
    .parameter "name"
    .parameter "param1"
    .parameter "param2"

    .prologue
    const/4 v1, 0x0

    .line 154
    if-nez p0, :cond_0

    .line 161
    :goto_0
    return-object v1

    .line 157
    :cond_0
    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, unused:Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static findMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 5
    .parameter "cn"
    .parameter "name"
    .parameter "param"

    .prologue
    .line 166
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 167
    .local v0, c:Ljava/lang/Class;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 175
    .end local v0           #c:Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 168
    :catch_0
    move-exception v1

    .line 169
    .local v1, unused:Ljava/lang/ClassNotFoundException;
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v1           #unused:Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 171
    :catch_1
    move-exception v1

    .line 172
    .local v1, unused:Ljava/lang/NoSuchMethodException;
    const-string v2, "GLSUser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getActionBar(Landroid/app/Activity;)Ljava/lang/Object;
    .locals 2
    .parameter "c"

    .prologue
    .line 214
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 221
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 221
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .parameter "cn"

    .prologue
    .line 180
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 185
    :goto_0
    return-object v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, unused:Ljava/lang/ClassNotFoundException;
    const-string v1, "GLSUser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static hasActionBar()Z
    .locals 1

    .prologue
    .line 239
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sContextGetActionBar:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasPermanentMenuKey(Landroid/view/ViewConfiguration;)Z
    .locals 4
    .parameter "viewConfig"

    .prologue
    const/4 v2, 0x0

    .line 304
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 306
    :try_start_0
    sget-object v1, Lcom/google/android/gsf/login/Compat;->sViewConfigurationHasPermanentMenuKey:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 311
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Throwable;
    move v1, v2

    .line 308
    goto :goto_0

    .end local v0           #e:Ljava/lang/Throwable;
    :cond_0
    move v1, v2

    .line 311
    goto :goto_0
.end method

.method public static isWifiOnlyBuild()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 291
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 292
    const-string v2, "get"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 293
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 294
    const-string v2, "wifi-only"

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ro.carrier"

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 296
    :goto_0
    return v0

    .line 295
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static menuItemSetShowAsAction(Landroid/view/MenuItem;I)V
    .locals 4
    .parameter "mi"
    .parameter "param"

    .prologue
    .line 269
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 273
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sMenuItemSetShowAsAction:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 274
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static trafficStatsClearThreadStatsTag()V
    .locals 3

    .prologue
    .line 325
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStatsClearThreadStatsTag:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 327
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStatsClearThreadStatsTag:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gsf/login/Compat;->sTrafficStats:Ljava/lang/Class;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static trafficStatsSetThreadStatsTag(I)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 315
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStatsSetThreadStatsTag:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 317
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sTrafficStatsSetThreadStatsTag:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/google/android/gsf/login/Compat;->sTrafficStats:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static viewSetSystemUiVisibility(Landroid/widget/FrameLayout;I)V
    .locals 4
    .parameter "fl"
    .parameter "v"

    .prologue
    .line 280
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 282
    :try_start_0
    sget-object v0, Lcom/google/android/gsf/login/Compat;->sViewSetSystemUiVisibility:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    goto :goto_0
.end method
