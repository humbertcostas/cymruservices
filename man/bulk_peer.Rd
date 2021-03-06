% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/asn.R
\name{bulk_peer}
\alias{bulk_peer}
\title{Retrieves BGP Peer ASN info for a list of IPv4 addresses}
\usage{
bulk_peer(ips)
}
\arguments{
\item{ips}{vector of IPv4 address (character - dotted-decimal)}
}
\value{
data frame of BGP Peer ASN lookup results
  \itemize{
    \item \code{peer_as} - peer AS #
    \item \code{ip} - IPv4 (passsed in)
    \item \code{bgp_prefix} - BGP CIDR block
    \item \code{cc} - Country code
    \item \code{registry} - Registry it falls under
    \item \code{allocated} - date allocated
    \item \code{peer_as_name} - peer name
  }
}
\description{
Retrieves BGP Peer ASN info for a list of IPv4 addresses
}
\note{
The Team Cymru's service is NOT a GeoIP service! Do not use this
      function for that as your results will not be accurate.
      Data is updated every 4 hours. Also,
      A direct connection to TCP Port 43 (WHOIS) is required for most of these
      API functions to work properly.
}
\examples{
bulk_peer(c("68.22.187.5", "207.229.165.18", "198.6.1.65"))
}
\seealso{
\url{http://www.team-cymru.org/IP-ASN-mapping.html}
}

