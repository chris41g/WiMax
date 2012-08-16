.class public Landroid/net/fourG/wimax/Wimax4GConfiguration;
.super Landroid/net/fourG/net4GConfiguration;
.source "Wimax4GConfiguration.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/fourG/wimax/Wimax4GConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_bNetworkReqPwd:Z

.field private m_bNetworkReqUsername:Z

.field private m_nNspId:I

.field private m_strNspName:Ljava/lang/String;

.field private m_strPassword:Ljava/lang/String;

.field private m_strUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    new-instance v0, Landroid/net/fourG/wimax/Wimax4GConfiguration$1;

    invoke-direct {v0}, Landroid/net/fourG/wimax/Wimax4GConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/net/fourG/net4GConfiguration;-><init>()V

    .line 22
    return-void
.end method

.method static synthetic access$002(Landroid/net/fourG/wimax/Wimax4GConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/fourG/wimax/Wimax4GConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/fourG/wimax/Wimax4GConfiguration;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNspId:I

    return p1
.end method

.method static synthetic access$402(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNetworkId:I

    return p1
.end method

.method static synthetic access$502(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nStatus:I

    return p1
.end method

.method static synthetic access$602(Landroid/net/fourG/wimax/Wimax4GConfiguration;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 12
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nPriority:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getNetworkRequiresPassword()Z
    .registers 2

    .prologue
    .line 29
    iget-boolean v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_bNetworkReqPwd:Z

    return v0
.end method

.method public getNetworkRequiresUsername()Z
    .registers 2

    .prologue
    .line 37
    iget-boolean v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_bNetworkReqUsername:Z

    return v0
.end method

.method public getNspId()I
    .registers 2

    .prologue
    .line 45
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNspId:I

    return v0
.end method

.method public getNspName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setNetworkRequiresPassword(Z)V
    .registers 2
    .parameter "bpswd"

    .prologue
    .line 33
    iput-boolean p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_bNetworkReqPwd:Z

    .line 34
    return-void
.end method

.method public setNetworkRequiresUsername(Z)V
    .registers 2
    .parameter "bUname"

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_bNetworkReqPwd:Z

    .line 42
    return-void
.end method

.method public setNspId(I)V
    .registers 2
    .parameter "NspId"

    .prologue
    .line 57
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNspId:I

    .line 58
    return-void
.end method

.method public setNspName(Ljava/lang/String;)V
    .registers 2
    .parameter "nspName"

    .prologue
    .line 49
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .registers 2
    .parameter "password"

    .prologue
    .line 61
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2
    .parameter "Username"

    .prologue
    .line 65
    iput-object p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setValue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .parameter "nNspId"
    .parameter "strNspName"
    .parameter "strUsername"
    .parameter "strPassword"

    .prologue
    .line 89
    iput p1, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNspId:I

    .line 90
    iput-object p2, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;

    .line 91
    iput-object p3, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;

    .line 92
    iput-object p4, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "Wimax4GConfiguration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 81
    .local v0, none:Ljava/lang/String;
    const-string v2, "NspName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;

    if-nez v2, :cond_39

    move-object v2, v0

    :goto_14
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Username: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;

    if-nez v2, :cond_3c

    move-object v2, v0

    :goto_23
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;

    if-nez v3, :cond_3f

    .end local v0           #none:Ljava/lang/String;
    :goto_31
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 81
    .restart local v0       #none:Ljava/lang/String;
    :cond_39
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;

    goto :goto_14

    :cond_3c
    iget-object v2, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;

    goto :goto_23

    :cond_3f
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;

    goto :goto_31
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 97
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strNspName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strUsername:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_strPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNspId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nNetworkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Landroid/net/fourG/wimax/Wimax4GConfiguration;->m_nPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    return-void
.end method
